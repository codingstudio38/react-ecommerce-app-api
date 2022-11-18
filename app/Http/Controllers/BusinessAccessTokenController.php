<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\AccessToken;
use App\Models\User;
use Illuminate\Support\Facades\DB; 

class BusinessAccessTokenController extends Controller
{
    public $AccessToken = null;
    public function __construct(){
        $this->AccessToken = new AccessToken;
    }
 
    /////////header token checking start
    public function AuthCheck($request){
        $access_origin = array("http://localhost:3000");
        $origin = $request->header('origin');
        $route = \Request::url();
        $bearer_token = $request->bearerToken();
        if(!in_array($origin, $access_origin)){
            return array('access'=>false, 'status'=>400,  'message' => 'HTTP: Access denied..!!');
        }
        if(!empty($bearer_token)){
            if(strpos($bearer_token, '|')){
                if(!strpos($bearer_token, '**')){
                    return array('access'=>false, 'status'=>401,  'message' => 'Unauthorized. Invalid Token Detected..!!');
                } else {
                    $getOwner = explode("**",$bearer_token);
                    $owner = explode("-",base64_decode($getOwner[1]));
                    if(!User::where('id',$owner[0])->exists()){
                        return array('access'=>false, 'status'=>401,  'message' => 'Unauthorized. User Not Exists..!!');
                    } else {
                        [$id, $token] = explode("|",$bearer_token,2);
                        if (!$this->AccessToken->CheckToken($id, $token, $route)) { 
                            return array('access'=>false, 'status'=>401,  'message' => 'Unauthorized. Invalid Token..!!');
                        } else { 
                            return array('access'=>true, 'status'=>200,  'message' => 'Authorized.');
                        }
                    }
                }
            } else {
                return array('access'=>false, 'status'=>401,  'message' => 'Unauthorized. Invalid Token Detected..!!');
            }
        } else {
            return array('access'=>false, 'status'=>401,  'message' => 'Unauthorized. Token Not Exists..!!');
        }
    }
    /////////header token checking end



     
    /////////create personal access token start
    public function CreateAccessToken($userid){
        return $this->AccessToken->CreateNewToken($userid);
    }
    /////////create personal access token end


 
    /////////delete personal access start
    public function DeleteAccessToken($request){
        $token = $request->bearerToken();
        $getOwner = explode("**",$token);
        $id = explode("-",base64_decode($getOwner[1]));
        return $this->AccessToken->DeleteToken($id,$token);
    }
    /////////delete personal access end
}
