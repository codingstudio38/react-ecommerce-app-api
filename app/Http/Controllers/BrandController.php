<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Product;
use App\Models\Category;
use App\Models\Subcategory;
use App\Models\Brands;

class BrandController extends Controller
{
    public function AddBrand(Request $request)
    { 
        $new = new Brands; 
        $new->name=trim($request->name);
        $result = $new->save();
        $rowid = $new->id;
        if($request->hasFile('logo')) {
            $file = $request->file('logo');
            $fileName = $file->getClientOriginalName();
            $file_extension = $file->extension();
            $file_size = $file->getSize();
            $file_Newname = "brand_".rand(11111, 99999)."_".$file_size."."."jpg";
            if($file->move('brands/',$file_Newname)){
                $newphoto = Brands::find($rowid);
                $newphoto->logo=$file_Newname;
                if($newphoto->save()){ 
                    $photo = url('brands/')."/".$file_Newname;
                    $data = array(
                        'id'=>$newphoto->id,
                        'name'=>$newphoto->name,
                        'img'=>$photo,
                    );
                    return response()->json([
                        'data' =>$data,
                        'status' => 200,
                        'message' => 'Brand Successfully Added.',
                    ]); 
                } else {
                    if(\File::exists(public_path('/brands/'.$file_Newname))){
                        \File::delete(public_path('/brands/'.$file_Newname));
                    }
                    Brands::where('id',$rowid)->delete();
                    return response()->json([
                        'status' => 400,
                        'message' => 'Failed To File Upload..!!',
                    ]); 
                }
            } else {
                Brands::where('id',$rowid)->delete();
                return response()->json([
                        'status' => 400,
                        'message' => 'Failed To Move File..!!',
                    ]); 
            }
        } else {
            $newphoto = Brands::find($rowid);
            $newphoto->logo="demo.png";
            $newphoto->save(); 
            $photo = url('brands/')."/demo.png";
            $data = array(
                'id'=>$newphoto->id,
                'name'=>$newphoto->name,
                'img'=>$photo,
            );
            return response()->json([
                'data' =>$data,
                'status' => 200,
                'message' => 'Category Successfully Added.',
            ]); 
        }
    }

    public function UpdateBrand(Request $request){
        $rowid = $request->post('rowid');
        $oldphoto = $request->post('oldphoto');
        $name = $request->post('name');
        if(Brands::where('id',$rowid)->count() <= 0 ){
            return response()->json([
                'status' => 400,
                'message' => 'Invalid Id..!!',
            ]); 
        } 
        $newdata = Brands::find($rowid); 
        $newdata->name=trim($name);
        $newdata->save();
        if($request->hasFile('newlogo')) {
            $file = $request->file('newlogo');
            $fileName = $file->getClientOriginalName();
            $file_extension = $file->extension();
            $file_size = $file->getSize();
            $file_Newname = "brand_".rand(11111, 99999)."_".$file_size."."."jpg";
            if($file->move('brands/',$file_Newname)){
                $data = Brands::find($rowid);
                $data->logo=$file_Newname;
                if($data->save()){ 
                    if(\File::exists(public_path('/brands/'.$oldphoto))){
                        \File::delete(public_path('/brands/'.$oldphoto));
                    }
                    $photo = url('brands/')."/".$file_Newname;
                    $data = array(
                        'id'=>$data->id,
                        'name'=>$data->name,
                        'img'=>$photo,
                    );
                    return response()->json([
                        'user_data' =>$data,
                        'status' => 200,
                        'message' => 'Brands Successfully Updated.',
                    ]); 
                } else {
                    if(\File::exists(public_path('/brands/'.$file_Newname))){
                        \File::delete(public_path('/brands/'.$file_Newname));
                    }
                    return response()->json([
                        'status' => 400,
                        'message' => 'Failed To File Update..!!',
                    ]); 
                }
            } else {
                if(\File::exists(public_path('/brands/'.$file_Newname))){
                    \File::delete(public_path('/brands/'.$file_Newname));
                }
                return response()->json([
                        'status' => 400,
                        'message' => 'Failed To Move File..!!',
                    ]); 
            }
        } else { 
            $data = Brands::find($rowid);
            $photo = url('brands/').$data->logo;
            $data = array(
                'id'=>$data->id,
                'name'=>$data->name,
                'img'=>$photo,
            );
            return response()->json([
                'data' =>$data,
                'status' => 200,
                'message' => 'Brands Successfully Updated.',
            ]); 
        }
    }



    public function ViewBrand(Request $request)
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
        $data = Brands::orderBy('id','DESC')->paginate($limit);
        return response()->json([
            'data' => $data,
            'status' => 200,
            'message' => 'Brand Successfully Fatched.',
        ]); 
    }
   

    public function DeleteBrand(Request $request)
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
        $check = Brands::where('id',$request->get('deleteid'))->count();
        if($check > 0){
        $data = Brands::where('id',$request->get('deleteid'))->first();
            if(\File::exists(public_path('/brands/'.$data->logo))){
                \File::delete(public_path('/brands/'.$data->logo));
            }  
        $dalete = Brands::where('id',$request->get('deleteid'))->delete();
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

    public function BrandList(Request $request){
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
        $data = Brands::select($ex_columns)->orderBy('name','ASC')->get();
        return response()->json([
            'data' => $data,
            'status' => 200,
            'message' => 'Brands Successfully Fatched.',
        ]); 
    }


    public function reduxAPItest(Request $request){
        return response()->json([
            'data' => $request->all(),
            'status' => 200,
            'message' => 'Successfully Fatched.',
        ]);
    }

public function UpdateBrandStatus(Request $request)
{ 
    $validator = \Validator::make($request->all(),[
        'bid' => 'required|numeric',
        'status' => 'required|numeric'
    ]);
    $bid = $request->post('bid');
    $status = $request->post('status');
    if ($validator->fails())
    {
        return response()->json(['status' => 400,'message' => $validator->errors()]);
    } else {
        if(Brands::where('id',$bid)->exists()){
            $data = Brands::find($bid);
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
