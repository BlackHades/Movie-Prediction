<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class UserController extends Controller
{

    public function all()
    {
        return view('users.all',[
            'title' => 'Users',
            'users' => User::orderByDesc('id')->get()
        ]);
    }


    public function create(Request $request)
    {
        $this->validate($request,[
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required'
        ]);

        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
        $user->save();
        Session::flash('success', "User created successfully");
        return redirect()->back();
    }

    public function store(Request $request)
    {
        //
    }


    public function show($id)
    {
        //
    }


    public function edit($id)
    {
        //
    }


    public function update(Request $request, $id)
    {
        //
    }

    public function destroy(User $user)
    {
//        dd($user);
        try {
            $user->delete();
        } catch (\Exception $e) {
        }
        Session::flash('success', "User deleted successfully");
        return redirect()->back();
    }
}
