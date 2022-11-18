<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Category;
use App\Models\Subcategory;
use App\Models\Brands;
class SubCategoryController extends Controller
{
    public function AddSubCategory(Request $request)
    { 
        $newdata = new Subcategory; 
        $newdata->category_id=trim($request->category_id);
        $newdata->name=trim($request->name);
        $result = $newdata->save();
        $rowid = $newdata->id;
        if($request->hasFile('subcategoryimg')) {
            $file = $request->file('subcategoryimg');
            $fileName = $file->getClientOriginalName();
            $file_extension = $file->extension();
            $file_size = $file->getSize();
            $file_Newname = "sub_category_".rand(11111, 99999)."_".$file_size."."."jpg";
            if($file->move('sub-category/',$file_Newname)){
                $dataphoto = Subcategory::find($rowid);
                $dataphoto->img=$file_Newname;
                if($dataphoto->save()){ 
                    $photo = url('sub-category/')."/".$file_Newname;
                    $data = array(
                        'id'=>$dataphoto->id,
                        'sub-category'=>Category::select('name')->where('id',$dataphoto->category_id)->first(),
                        'name'=>$dataphoto->name,
                        'img'=>$photo,
                    );
                    return response()->json([
                        'data' =>$data,
                        'status' => 200,
                        'message' => 'Sub-Category Successfully Added.',
                    ]); 
                } else {
                    if(\File::exists(public_path('/sub-category/'.$file_Newname))){
                        \File::delete(public_path('/sub-category/'.$file_Newname));
                    }
                    Subcategory::where('id',$rowid)->delete();
                    return response()->json([
                        'status' => 400,
                        'message' => 'Failed To File Upload..!!',
                    ]); 
                }
            } else {
                Subcategory::where('id',$rowid)->delete();
                return response()->json([
                        'status' => 400,
                        'message' => 'Failed To Move File..!!',
                    ]); 
            }
        } else {
            $dataphoto = Subcategory::find($rowid);
            $dataphoto->img="demo.png";
            $dataphoto->save(); 
            $photo = url('sub-category/')."/demo.png";
            $data = array(
                'id'=>$newUser->id,
                'sub-category'=>Category::select('name')->where('id',$dataphoto->category_id)->first(),
                'name'=>$newUser->name,
                'img'=>$photo,
            );
            return response()->json([
                'data' =>$data,
                'status' => 200,
                'message' => 'Sub-Category Successfully Added.',
            ]); 
        }
    } 

    public function UpdateSubCategory(Request $request){
        $rowid = $request->post('rowid');
        $oldphoto = $request->post('oldphoto');
        $name = $request->post('name');
        $categoryid = $request->post('categoryid');
        if(Subcategory::where('id',$rowid)->count() <= 0 ){
            return response()->json([
                'status' => 400,
                'message' => 'Invalid Id..!!',
            ]); 
        }
        $newdata = Subcategory::find($rowid); 
        $newdata->category_id=trim($categoryid);
        $newdata->name=trim($name);
        $newdata->save();
        if($request->hasFile('subcategoryimg')) {
            $file = $request->file('subcategoryimg');
            $fileName = $file->getClientOriginalName();
            $file_extension = $file->extension();
            $file_size = $file->getSize();
            $file_Newname = "category_".rand(11111, 99999)."_".$file_size."."."jpg";
            if($file->move('sub-category/',$file_Newname)){
                $data = Subcategory::find($rowid);
                $data->img=$file_Newname;
                if($data->save()){ 
                    if(\File::exists(public_path('/sub-category/'.$oldphoto))){
                        \File::delete(public_path('/sub-category/'.$oldphoto));
                    }
                    $photo = url('sub-category/')."/".$file_Newname;
                    $data = array(
                        'id'=>$data->id,
                        'name'=>$data->name,
                        'img'=>$photo,
                    );
                    return response()->json([
                        'user_data' =>$data,
                        'status' => 200,
                        'message' => 'Sub-Category Successfully Updated.',
                    ]); 
                } else {
                    if(\File::exists(public_path('/sub-category/'.$file_Newname))){
                        \File::delete(public_path('/sub-category/'.$file_Newname));
                    }
                    return response()->json([
                        'status' => 400,
                        'message' => 'Failed To File Update..!!',
                    ]); 
                }
            } else {
                if(\File::exists(public_path('/sub-category/'.$file_Newname))){
                    \File::delete(public_path('/sub-category/'.$file_Newname));
                }
                return response()->json([
                        'status' => 400,
                        'message' => 'Failed To Move File..!!',
                    ]); 
            }
        } else { 
            $data = Subcategory::find($rowid);
            $photo = url('sub-category/').$data->img;
            $data = array(
                'id'=>$data->id,
                'name'=>$data->name,
                'img'=>$photo,
            );
            return response()->json([
                'data' =>$data,
                'status' => 200,
                'message' => 'Sub-Category Successfully Updated.',
            ]); 
        }
    }

    public function ViewSubCategory(Request $request)
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
        $data = Subcategory::leftjoin('categories', 'sub_categories_tbl.category_id', '=', 'categories.id')->orderBy('sub_categories_tbl.id','DESC')
        ->select('sub_categories_tbl.id as id','sub_categories_tbl.name as subname','sub_categories_tbl.img as img','sub_categories_tbl.img as img','sub_categories_tbl.status as status','categories.id as categoryid','categories.name as categoryname')
        ->paginate($limit);
        return response()->json([
            'data' => $data,
            'status' => 200,
            'message' => 'Sub-Category Successfully Fatched.',
        ]); 
    }
    public function DeleteSubCategory(Request $request)
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
        $check = Subcategory::where('id',$request->get('deleteid'))->count();
        if($check > 0){
        $data = Subcategory::where('id',$request->get('deleteid'))->first();
            if(\File::exists(public_path('/sub-category/'.$data->img))){
                \File::delete(public_path('/sub-category/'.$data->img));
            }      
        $dalete = Subcategory::where('id',$request->get('deleteid'))->delete();
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
    
    public function SubCategoryList(Request $request){
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
        $data = Subcategory::select($ex_columns)->orderBy('name','ASC')->get();
        return response()->json([
            'data' => $data,
            'status' => 200,
            'message' => 'Subcategory Successfully Fatched.',
        ]); 
    }
    public function SubCategorySearch(Request $request){
        if(!isset($_GET['cat_id'])){
            return response()->json([
                'status' => 400,
                'message' => 'Category id required',
            ]); 
        } else if($_GET['cat_id']==""){
            return response()->json([
                'status' => 400,
                'message' => 'Invalid Id',
            ]); 
        } else {
           $cat_id = $request->get('cat_id');
        }
        $data = Subcategory::select('id','name')->where('category_id',$cat_id)->orderBy('name','ASC')->get();
        return response()->json([
            'data' => $data,
            'status' => 200,
            'message' => 'Subcategory Successfully Fatched.',
        ]); 
    }




    public function UpdatesubCategoryStatus(Request $request)
    { 
        $validator = \Validator::make($request->all(),[
            'scid' => 'required|numeric',
            'status' => 'required|numeric'
        ]);
        $scid = $request->post('scid');
        $status = $request->post('status');
        if ($validator->fails())
        {
            return response()->json(['status' => 400,'message' => $validator->errors()]);
        } else {
            if(Subcategory::where('id',$scid)->exists()){
                $data = Subcategory::find($scid);
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
