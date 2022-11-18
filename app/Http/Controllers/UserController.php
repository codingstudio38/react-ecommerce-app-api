<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use App\Http\Controllers\BusinessAccessTokenController;
class UserController extends Controller
{
    public $tokenController = null;
    public function __construct(){
        $this->tokenController = new BusinessAccessTokenController;
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
        if(!User::where('email',$email)->exists()){
            return response()->json([
                'status' => 400,
                'message' => 'These credentials do not match our records..!!',
            ]); 
            exit; 
        } else {
            $loginData = User::where('email', $email)->first();
            if (!$loginData || !Hash::check($request->password, $loginData->password)) {
                return response()->json([
                    'status'  => 400,
                    'message' => 'Login failed..!!',
                ]); 
                exit;
            } else {
                $photo = url('users_photo/')."/".$loginData->photo;
                $user = [
                    'owner_id'=>$loginData->id,
                    'name'=>$loginData->name,
                    'bearer_token'  => $this->tokenController->CreateAccessToken($loginData->id),
                    'email'=>$loginData->email,
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

    public function logout(Request $request)
    {
       if(!$this->tokenController->DeleteAccessToken($request)){
            return response()->json([
                'status' => "failed",
                'message' => 'Failed to delete token..!!',
            ]); 
        } else {
            return response()->json([
                'status' => "success",
                'message' => 'Successfully logged out.',
            ]); 
        }
    }









}
