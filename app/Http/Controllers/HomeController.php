<?php

namespace App\Http\Controllers;

use App\helpers\WebConstants;
use App\Models\Movie;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class HomeController extends Controller
{
    function home(Request $request){
        return view('home.home',[
            'title' => 'All Movies',
            'movies' => Movie::orderByDesc('id')->get()
        ]);
    }


    function login(Request $request){
        if($request->method() == WebConstants::$POST){
            if(Auth::attempt(['email' => $request->email, 'password' => $request->password])){
                return redirect()->action('MovieController@index');
            }else{
                Session::flash('error','Invalid Username/Password');
                return redirect()->back();
            }
        }

        return view('home.login',[
            'title' => 'Login'
        ]);
    }

    function logout(){
        Auth::logout();
        return redirect()->route('login');
    }
}
