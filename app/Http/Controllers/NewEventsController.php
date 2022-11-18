<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Events\PostCreated;
class NewEventsController extends Controller
{
    public function Index(Request $request)
    {
       $data = array(
            'title'=>'This is first test',
            'name'=>"Vidyut", 
            'email'=>"mondalbidyut38@gmail.com"
        );
       $event = event(new PostCreated($data));
    //   return $event[0];
       return view('EventView',$event[0]);
        // php artisan make:event PostCreated
        // php artisan make:listener NotifyUser
        // php artisan make:listener NotifyUser --event=PostCreated
    }
}
