<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\Customer;
use App\Models\AddressType;


class CustomerController extends Controller
{
    
    public function Create(Request $request)
    {
        $email = $request->post('email');
        $phone = $request->post('phone');
        $firstname = $request->post('firstname');
        $lastname = $request->post('lastname');
        $password = $request->post('password');
        if($email==""){
            return response()->json([
                'status' => 400,
                'message' => 'Invalid email id',
            ]); 
        }
        if($phone==""){
            return response()->json([
                'status' => 400,
                'message' => 'Invalid phone no',
            ]); 
        }
        if(Customer::where('email',trim($email))->exists()){
            return response()->json([
                'data' => $email,
                'status' => 400,
                'message' => 'Email Id already exist..!! Try Different..',
            ]); 
        } else if(Customer::where('phone',trim($phone))->exists()){
            return response()->json([
                'data' => $phone,
                'status' => 400,
                'message' => 'Phone no already exist..!! Try Different..',
            ]); 
        } else {
            $newUser = new Customer; 
            $newUser->name=trim($firstname)." ".trim($lastname);
            $newUser->email=trim($email);
            $newUser->phone=trim($phone);
            $newUser->password=Hash::make($password);
            $result = $newUser->save();
            $userid = $newUser->id;
            if($request->hasFile('profile_photo')) {
                $file = $request->file('profile_photo');
                $fileName = $file->getClientOriginalName();
                $file_extension = $file->extension();
                $file_size = $file->getSize();
                $file_Newname = "customer_".rand(11111, 99999)."_".$file_size."."."jpg";
                if($file->move('customer_photo/',$file_Newname)){
                    $userPhoto = Customer::find($userid);
                    $userPhoto->photo=$file_Newname;
                    if($userPhoto->save()){ 
                        $photo = url('customer_photo/')."/".$file_Newname;
                        $user = array(
                            'id'=>$newUser->id,
                            'name'=>$newUser->name,
                            'email'=>$newUser->email,
                            'phone'=>$newUser->phone,
                            'profile_photo'=>$photo,
                        );
                        return response()->json([
                            'user_data' =>$user,
                            'status' => 200,
                            'message' => 'Customer Successfully Created.',
                        ]); 
                    } else {
                        Customer::where('id',$userid)->delete();
                        return response()->json([
                            'status' => 400,
                            'message' => 'Failed To File Upload..!!',
                        ]); 
                    }
                } else {
                    Customer::where('id',$userid)->delete();
                    return response()->json([
                            'status' => 400,
                            'message' => 'Failed To Move File..!!',
                        ]); 
                }
            } else {
                $userPhoto = Customer::find($userid);
                $userPhoto->photo="demo.jpg";
                $userPhoto->save(); 
                $photo = url('customer_photo/')."/demo.jpg";
                $user = array(
                    'id'=>$newUser->id,
                    'name'=>$newUser->name,
                    'email'=>$newUser->email,
                    'phone'=>$newUser->phone,
                    'profile_photo'=>$photo,
                );
                return response()->json([
                    'user_data' =>$user,
                    'status' => 200,
                    'message' => 'Customer Successfully Created.',
                ]); 
            }
        } 
    }

    public function Login(Request $request)
    {
        if($request->email==""){
            return response()->json([
                'status' => 400,
                'message' => 'Invalid email id',
            ]); 
            exit; 
        }
        $email = $request->email;
        $password = $request->password;
        if(!Customer::where('email',$email)->exists()){
            return response()->json([
                'status' => 400,
                'message' => 'These credentials do not match our records..!!',
            ]); 
            exit; 
        } else {
            $loginData = Customer::where('email', $email)->first();
            if (!$loginData || !Hash::check($request->password, $loginData->password)) {
                return response()->json([
                    'status'  => 400,
                    'message' => 'Login failed..!!',
                ]); 
                exit;
            } else {
                $photo = url('customer_photo/')."/".$loginData->photo;
                $user = [
                    'owner_id'=>$loginData->id,
                    'name'=>$loginData->name,
                    'email'=>$loginData->email,
                    'phone'=>$loginData->phone,
                    'profile_photo'=>$photo,
                ];
                return response()->json([
                    'user_data'=> $user,
                    'status'  => 200,
                    'message' => 'Successfully logged in..',
                ]); 
                exit;
            }
        }

    }

    public function GetAddressType(Request $request)
    {
        // AddressType
        // $validator = \Validator::make($request->all(),[
        //     'bid' => 'required|numeric',
        //     'status' => 'required|numeric'
        // ]);
        // $bid = $request->post('bid');
        // $status = $request->post('status');
        // if ($validator->fails())
        // {
        //     return response()->json(['status' => 400,'message' => $validator->errors()]);
        // }
        return response()->json([
            'list'=> AddressType::get(),
            'status'  => 200,
            'message' => 'Success.',
        ]); 
        exit;
    }













}
