<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use App\Http\Controllers\BusinessAccessTokenController;

class SecureBusinessApp
{
    /**  
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public $CheckBusinessAccess = null;
    public function __construct(){
        $this->CheckBusinessAccess = new BusinessAccessTokenController;
    }  
    public function handle(Request $request, Closure $next)
    {
        $check = $this->CheckBusinessAccess->AuthCheck($request);
        if($check['access'] === false){
            return response()->json($check); 
        } 
        return $next($request);
    }
}