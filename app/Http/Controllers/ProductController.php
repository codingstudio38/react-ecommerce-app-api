<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Product;
use App\Models\Country;
use App\Models\Category;
use App\Models\Subcategory;
use App\Models\Brands;
class ProductController extends Controller
{
    public function Addproduct(Request $request)
    { 
        $newUser = new Product;  
        $newUser->category_id=trim($request->cat);
        $newUser->sub_category_id=trim($request->subcat);
        $newUser->brand_id=trim($request->brand);
        $newUser->name=trim($request->name);
        $newUser->price=trim($request->price);
        $newUser->description=trim($request->description);
        $newUser->status=1;
        $result = $newUser->save();
        $userid = $newUser->id;
        if($request->hasFile('productimg')) {
            $file = $request->file('productimg');
            $fileName = $file->getClientOriginalName();
            $file_extension = $file->extension();
            $file_size = $file->getSize();
            $file_Newname = "product_".rand(11111, 99999)."_".$file_size."."."jpg";
            if($file->move('products/',$file_Newname)){
                $userPhoto = Product::find($userid);
                $userPhoto->product_img=$file_Newname;
                if($userPhoto->save()){ 
                    $photo = url('products/')."/".$file_Newname;
                    $data = array(
                        'id'=>$userPhoto->id,
                        'name'=>$userPhoto->name,
                        'price'=>$userPhoto->price,
                        'description'=>$userPhoto->description,
                        'img'=>$photo,
                    );
                    return response()->json([
                        'data' =>$data,
                        'status' => 200,
                        'message' => 'Product Successfully Added.',
                    ]); 
                } else {
                    Product::where('id',$userid)->delete();
                    return response()->json([
                        'status' => 400,
                        'message' => 'Failed To File Upload..!!',
                    ]); 
                }
            } else {
                User::where('id',$userid)->delete();
                return response()->json([
                        'status' => 400,
                        'message' => 'Failed To Move File..!!',
                    ]); 
            }
        } else {
            $userPhoto = Product::find($userid);
            $userPhoto->product_img="demo.png";
            $userPhoto->save(); 
            $photo = url('products/')."/demo.png";
            $data = array(
                'id'=>$newUser->id,
                'name'=>$newUser->name,
                'price'=>$newUser->price,
                'description'=>$newUser->description,
                'img'=>$photo,
            );
            return response()->json([
                'data' =>$data,
                'status' => 200,
                'message' => 'Product Successfully Added.',
            ]); 
        }
    }

    public function ProductList(Request $request)
    {   
        if(!isset($_GET['limit'])){
            $limit = 5;
        }  else {
            $limit = $request->get('limit');
        }
        if(!isset($_GET['page'])){
            $page = 1;
        } else {
           $page = $request->get('page');
        } 
        //$data = Product::orderBy('id','DESC')->paginate($limit);
        $data =  Product::join('categories', 'products.category_id', '=', 'categories.id')
        ->join('sub_categories_tbl', 'products.sub_category_id', '=', 'sub_categories_tbl.id')
        ->join('brands', 'products.brand_id', '=', 'brands.id')
        ->select('categories.name as cat_name','sub_categories_tbl.name as subname','brands.name as brand_name','products.id as id','products.name as name','products.price as price','products.description as description','products.product_img as product_img','products.status as pstatus','products.available_stock as available_stock')
        ->orderBy('products.id', 'DESC')
        ->paginate($limit);
        return response()->json([
            'data' =>$data,
            'status' => 200,
            'message' => 'Product Successfully Fatched.',
        ]); 
    }

    public function ProductListWithPaginate(Request $request)
    {   
        if(!isset($_GET['limit'])){
            $limit = 10;
        }  else {
            $limit = $request->get('limit');
        }
        if(!isset($_GET['page'])){
            $page = 1;
        } else {
           $page = $request->get('page');
        }
        return $data = Country::orderBy('id','DESC')->paginate($limit);
        return response()->json([
            'data' =>$data,
            'status' => 200,
            'message' => 'Successfully Fatched.',
        ]); 
    }

    public function DeleteProduct(Request $request,$id)
    {
        $check = Product::where('id',$id)->count();
        if($check > 0){
        $dalete = Product::where('id',$id)->delete();
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

    public function ProductDetail(Request $request,$id)
    {
        $check = Product::where('id',$id)->count();
        if($check > 0){
        $data = Product::where('id',$id)->first();
            return response()->json([
                'data' => $data,
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

    public function UpdateProduct(Request $request)
    {
        $upid = $request->post('id');
        if(Product::where('id',$upid)->exists()){
            $newdata = Product::find($upid);
            $newdata->category_id=$request->post('cat');
            $newdata->sub_category_id=$request->post('subcat');
            $newdata->brand_id=$request->post('brand');
            $newdata->name=$request->post('name');
            $newdata->price=$request->post('price');
            $newdata->description=$request->post('description');
            $newdata->save();
            if($request->hasFile('productimg')) {
                $file = $request->file('productimg');
                $fileName = $file->getClientOriginalName();
                $file_extension = $file->extension();
                $file_size = $file->getSize();
                $file_Newname = "product_".rand(11111, 99999)."_".$file_size."."."jpg";
                if($file->move('products/',$file_Newname)){
                    $userPhoto = Product::find($upid);
                    $userPhoto->product_img=$file_Newname;
                    if($userPhoto->save()){ 
                        if(!$request->post('ofile')=="demo.png"){
                            if(\File::exists(public_path('/products/'.$request->post('ofile')))){
                                \File::delete(public_path('/products/'.$request->post('ofile')));
                            }
                        }
                        return response()->json([
                            'data' =>Product::find($upid),
                            'status' => 200,
                            'message' => 'Update Successfully.',
                        ]); 
                    } else {
                        if(\File::exists(public_path('/products/'.$file_Newname))){
                            \File::delete(public_path('/products/'.$file_Newname));
                        }
                        return response()->json([
                            'status' => 400,
                            'message' => 'Failed To File Upload..!!'
                        ]); 
                    }
                } else {
                    return response()->json([
                            'status' => 400,
                            'message' => 'Failed To Move File..!!',
                        ]); 
                }
            } else {
               return response()->json([
                    'data' => Product::find($upid),
                    'status' => 200,
                    'message' => 'Update Successfully.',
                ]); 
            }
        } else {
            return response()->json([
                'status' => 400,
                'message' => 'No records found..!!',
            ]);
        }
    }



    public function SearchProduct(Request $request)
    {
        if(!isset($_GET['keywork'])){
            return response()->json([
                'data'=>array(),
                'status' => 400,
                'message' => 'failed..!!',
            ]);            
        } 
        $key_word= $request->get('keywork');
        $data = Product::where('name', 'LIKE', '%'.$key_word.'%')->get();
            return response()->json([
                'data'=>$data,
                'status' => 200,
                'message' => 'success.',
            ]);
    } 

    public function UpdateProductStatus(Request $request)
    {
        $validator = \Validator::make($request->all(),[
            'pid' => 'required|numeric',
            'status' => 'required|numeric'
        ]);
        $pid = $request->post('pid');
        $status = $request->post('status');
        if ($validator->fails())
        { 
            return response()->json(['status' => 400,'message' => $validator->errors()]);
        } else {
            if(Product::where('id',$pid)->exists()){
                $data = Product::find($pid);
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
     public function UpdateStock(Request $request)
    {
        $validator = \Validator::make($request->all(),[
            'pid' => 'required|numeric',
            'stock' => 'required|numeric'
        ]);
        $pid = $request->post('pid');
        $stock = $request->post('stock');
        if ($validator->fails())
        { 
            return response()->json(['status' => 400,'message' => $validator->errors()]);
        } else {
            if(Product::where('id',$pid)->exists()){
                $data = Product::find($pid);
                $data->available_stock=$data->available_stock+$stock;
                if($data->save()){
                     return response()->json(['status' => 200,'message' => "Successfully updated."]);
                } else {
                    return response()->json(['status' => 400,'message' => "Failed to update..!!"]);
                }
                
            } else {
                return response()->json(['status' => 400,'message' => "Failed..!! Record not exists."]);
            }
        }
    }



}
