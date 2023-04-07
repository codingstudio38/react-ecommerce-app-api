<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\AccessToken AS AccessModel;
use Illuminate\Support\Str;
use Carbon\Carbon;

class AccessToken extends Model
{
    use HasFactory;
     public $table = "access_tokens";
    /////////token checking start
    public function CheckToken($id,$token,$route) {
        if(!AccessModel::where('id',$id)->exists()){
            return false;
        } else { 
            $accessData = AccessModel::where('id',$id)->first();
            if(!hash_equals($accessData->token, hash('sha256', $token))){
                return false;
            } else { 
                $data = AccessModel::find($id);
                if(!in_array("adminlogout", explode("/",$route))){
                    $data->tokenable_type=$route;
                    $data->last_used_at= Carbon::now()->format('Y-m-d');
                    $data->save();
                } else {
                    $data->last_used_at= Carbon::now()->format('Y-m-d');
                    $data->save();
                }
                return true; 
            }
        }
    }
    /////////token checking end

    /////////create personal access token start
    public function CreateNewToken($id) {
        $newToke = new AccessModel;
        $newToke->tokenable_id=$id;
        $newToke->token = "-";
        $newToke->name= "access-token";
        $newToke->save();
        $last_id = $newToke->id;
        $newtoken = Str::random(80)."**".base64_encode($id."-".$last_id);
        $newToke->token= hash('sha256', $newtoken); 
        $newToke->save();
        return $last_id."|".$newtoken;
    }
    /////////create personal access token end


    /////////delete personal access start
    public function DeleteToken($userid,$token) {
        [$tokenid, $token] = explode("|",$token,2);
        if(!AccessModel::where('id',$tokenid)->exists()){
            return false;
        }
        if(AccessModel::where('id',$tokenid)->delete()){
            return true;
        } else {
            return false;
        }
    }
    /////////delete personal access end
}