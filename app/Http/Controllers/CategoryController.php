<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Product;
use App\Models\Category;
use App\Models\Subcategory;
use App\Models\Brands;
class CategoryController extends Controller
{
    public function AddCategory(Request $request)
    { 
        $newdata = new Category; 
        $newdata->name=trim($request->name);
        $result = $newdata->save();
        $userid = $newdata->id;
        if($request->hasFile('categoryimg')) {
            $file = $request->file('categoryimg');
            $fileName = $file->getClientOriginalName();
            $file_extension = $file->extension();
            $file_size = $file->getSize();
            $file_Newname = "category_".rand(11111, 99999)."_".$file_size."."."jpg";
            if($file->move('category/',$file_Newname)){
                $data = Category::find($userid);
                $data->category_img=$file_Newname;
                if($data->save()){ 
                    $photo = url('category/')."/".$file_Newname;
                    $data = array(
                        'id'=>$data->id,
                        'name'=>$data->name,
                        'img'=>$photo,
                    );
                    return response()->json([
                        'data' =>$data,
                        'status' => 200,
                        'message' => 'Category Successfully Added.',
                    ]); 
                } else {
                    if(\File::exists(public_path('/category/'.$file_Newname))){
                        \File::delete(public_path('/category/'.$file_Newname));
                    }
                    Category::where('id',$userid)->delete();
                    return response()->json([
                        'status' => 400,
                        'message' => 'Failed To File Upload..!!',
                    ]); 
                }
            } else {
                Category::where('id',$userid)->delete();
                return response()->json([
                        'status' => 400,
                        'message' => 'Failed To Move File..!!',
                    ]); 
            }
        } else {
            $data = Category::find($userid);
            $data->category_img="demo.png";
            $data->save(); 
            $photo = url('category/')."/demo.png";
            $data = array(
                'id'=>$newUser->id,
                'name'=>$newUser->name,
                'img'=>$photo,
            );
            return response()->json([
                'data' =>$data,
                'status' => 200,
                'message' => 'Category Successfully Added.',
            ]); 
        }
    }

    
    public function UpdateCategory(Request $request){
        $rowid = $request->post('rowid');
        $oldphoto = $request->post('oldphoto');
        $name = $request->post('name');
        if(Category::where('id',$rowid)->count() <= 0 ){
            return response()->json([
                'status' => 400,
                'message' => 'Invalid Id..!!',
            ]); 
        } 
        $newdata = Category::find($rowid); 
        $newdata->name=trim($name);
        $newdata->save();
        if($request->hasFile('categoryimg')) {
            $file = $request->file('categoryimg');
            $fileName = $file->getClientOriginalName();
            $file_extension = $file->extension();
            $file_size = $file->getSize();
            $file_Newname = "category_".rand(11111, 99999)."_".$file_size."."."jpg";
            if($file->move('category/',$file_Newname)){
                $data = Category::find($rowid);
                $data->category_img=$file_Newname;
                if($data->save()){ 
                    if(\File::exists(public_path('/category/'.$oldphoto))){
                        \File::delete(public_path('/category/'.$oldphoto));
                    }
                    $photo = url('category/')."/".$file_Newname;
                    $data = array(
                        'id'=>$data->id,
                        'name'=>$data->name,
                        'img'=>$photo,
                    );
                    return response()->json([
                        'user_data' =>$data,
                        'status' => 200,
                        'message' => 'Category Successfully Updated.',
                    ]); 
                } else {
                    if(\File::exists(public_path('/category/'.$file_Newname))){
                        \File::delete(public_path('/category/'.$file_Newname));
                    }
                    return response()->json([
                        'status' => 400,
                        'message' => 'Failed To File Update..!!',
                    ]); 
                }
            } else {
                if(\File::exists(public_path('/category/'.$file_Newname))){
                    \File::delete(public_path('/category/'.$file_Newname));
                }
                return response()->json([
                        'status' => 400,
                        'message' => 'Failed To Move File..!!',
                    ]); 
            }
        } else {
            $data = Category::find($rowid);
            $photo = url('category/').$data->category_img;
            $data = array(
                'id'=>$data->id,
                'name'=>$data->name,
                'img'=>$photo,
            );
            return response()->json([
                'data' =>$data,
                'status' => 200,
                'message' => 'Category Successfully Updated.',
            ]); 
        }
    }


    public function ViewCategory(Request $request)
    {    
        if(!isset($_GET['limit'])){
            $limit = 5;
        } else {
            $limit = $request->get('limit');
        }

        if(!isset($_GET['page'])){
            $page = 1;
        } else {
           $page = $request->get('page');
        }
        $data = Category::orderBy('id','DESC')->paginate($limit);
        return response()->json([
            'data' => $data,
            'status' => 200,
            'message' => 'Category Successfully Fatched.',
        ]); 
    }

    public function DeleteCategory(Request $request)
    {
        if(!isset($_GET['deleteid'])){
            return response()->json([
                'status' => 400,
                'message' => 'deleteid required..!!',
            ]); 
        }
        if($_GET['deleteid']==""){
            return response()->json([
                'status' => 400,
                'message' => 'deleteid is empty..!!',
            ]); 
        }
        $check = Category::where('id',$request->get('deleteid'))->count();
        if($check > 0){
        $data = Category::where('id',$request->get('deleteid'))->first();
            if(\File::exists(public_path('/category/'.$data->category_img))){
                \File::delete(public_path('/category/'.$data->category_img));
            }     
        $dalete = Category::where('id',$request->get('deleteid'))->delete();
            return response()->json([
                'dalete' => $dalete,
                'status' => 200,
                'message' => 'Records successfully deleted..',
            ]);
        } else {
            return response()->json([
                'check' => $check,
                'status' => 400,
                'message' => 'No records found..!!',
            ]);
        }
    }

    public function CategoryList(Request $request)
    {    
        if(!isset($_GET['columns'])){
            return response()->json([
                'status' => 400,
                'message' => 'columns required',
            ]); 
        } else if(!strpos($_GET['columns'], '-')){
            return response()->json([
                'status' => 400,
                'message' => 'unknow columns format..!! format like: column1-column2-column3',
            ]); 
        } else {
           $columns = $request->get('columns');
        }
        $ex_columns = explode("-",$columns);
        $data = Category::select($ex_columns)->orderBy('name','ASC')->get();
        return response()->json([
            'data' => $data,
            'status' => 200,
            'message' => 'Category Successfully Fatched.',
        ]); 
    }


     public function UpdateCategoryStatus(Request $request)
    { 
        $validator = \Validator::make($request->all(),[
            'cid' => 'required|numeric',
            'status' => 'required|numeric'
        ]);
        $cid = $request->post('cid');
        $status = $request->post('status');
        if ($validator->fails())
        {
            return response()->json(['status' => 400,'message' => $validator->errors()]);
        } else {
            if(Category::where('id',$cid)->exists()){
                $data = Category::find($cid);
                $data->status=$status;
                if($data->save()){
                    if($status=="1"){
                        return response()->json(['status' => 200,'message' => "Successfully Activated."]);
                    } else {
                        return response()->json(['status' => 200,'message' => "Successfully Inactivated."]);
                    }
                } else {
                    return response()->json(['status' => 400,'message' => "Failed to update..!!"]);
                }
                
            } else {
                return response()->json(['status' => 400,'message' => "Failed..!! Record not exists."]);
            }
        }
    }





}
