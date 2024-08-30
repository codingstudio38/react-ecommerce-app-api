<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\SubCategoryController;
use App\Http\Controllers\BrandController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
 Route::fallback(function(){
    return response()->json([
      'status'=>400,
      'message'=>"route not found..!!"
    ]);
});
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['prefix'=>'/customer'],function(){
   Route::post('/create',[CustomerController::class,'Create']);
   Route::post('/login',[CustomerController::class,'Login']);
});

Route::group(['prefix'=>'/customer-profile'],function(){
   Route::get('/address-type',[CustomerController::class,'GetAddressType']);
});  

Route::group([],function(){//'prefix'=>'/user'
//   Route::group(['prefix'=>'throttle:5,1'],function(){  });
try {
  Route::middleware(['throttle:5,1'])->group(function () {
     Route::post('/login',[UserController::class,'Login']);
});
} catch (\Throwable $th) {
   return response()->json(['message'=>$th->getMessage(),'status'=>429], 429);
}


  
   
}); 
 
Route::group(['prefix'=>'/access','middleware' => 'securebusinessapp' ],function(){
   Route::get('/adminlogout',[UserController::class,'logout']);
   Route::post('/addproduct',[ProductController::class,'Addproduct']);
   Route::get('/productlist',[ProductController::class,'ProductList']);
   Route::get('/productlistnew',[ProductController::class,'ProductListWithPaginate']);
   Route::delete('/deleteproduct/{id}',[ProductController::class,'DeleteProduct']);
   Route::get('/productdetail/{id}',[ProductController::class,'ProductDetail']);
   Route::post('/updateproduct',[ProductController::class,'UpdateProduct']);
   Route::get('/searchproduct',[ProductController::class,'SearchProduct']);
   Route::post('/updateproductstatus',[ProductController::class,'UpdateProductStatus']);
   Route::post('/updateproductquantity',[ProductController::class,'UpdateStock']);

   Route::post('/addcategory',[CategoryController::class,'AddCategory']);
   Route::post('/updatecategory',[CategoryController::class,'UpdateCategory']);
   Route::get('/viewcategory',[CategoryController::class,'ViewCategory']);
   Route::get('/deletecategory',[CategoryController::class,'DeleteCategory']);
   Route::get('/categorylist',[CategoryController::class,'CategoryList']);
   Route::post('/updatecategorystatus',[CategoryController::class,'UpdateCategoryStatus']);
   
   Route::post('/addsubcategory',[SubCategoryController::class,'AddSubCategory']);
   Route::post('/updatesubcategory',[SubCategoryController::class,'UpdateSubCategory']); 
   Route::get('/viewsubcategory',[SubCategoryController::class,'ViewSubCategory']);
   Route::get('/deletesubcategory',[SubCategoryController::class,'DeleteSubCategory']);
   Route::get('/subcategorylist',[SubCategoryController::class,'SubCategoryList']);
   Route::get('/subcategorysearch',[SubCategoryController::class,'SubCategorySearch']);
   Route::post('/updatesubcategorystatus',[SubCategoryController::class,'UpdatesubCategoryStatus']);

   Route::post('/addbrand',[BrandController::class,'AddBrand']);
   Route::post('/updatebrand',[BrandController::class,'UpdateBrand']);
   Route::get('/viewbrand',[BrandController::class,'ViewBrand']);
   Route::get('/deletebrand',[BrandController::class,'DeleteBrand']); 
   Route::get('/brandlist',[BrandController::class,'BrandList']); 
   Route::post('/updatebrandstatus',[BrandController::class,'UpdateBrandStatus']); 
 

   Route::post('/reduxAPItest',[BrandController::class,'reduxAPItest']); 
}); 