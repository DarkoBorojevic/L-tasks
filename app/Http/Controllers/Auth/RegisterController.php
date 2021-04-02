<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use App\Models\User;

class RegisterController extends Controller
{

    public function __construct() 
    {

        $this->middleware(['guest']);

    }

    public function index()
    {

        return view('auth.register');
        
    }

    public function store(Request $request)
    {

        $this->validate($request, [

            'name'      => ['required', 'max:255'],
            'username'  => ['required', 'unique:users', 'max:45'],
            'email'     => ['required', 'unique:users', 'max:255'],
            'password'  => ['required', 'confirmed']

        ]);

        User::create([

            'name'      => $request->name,
            'username'  => $request->username,
            'email'     => $request->email,
            'password'  => Hash::make($request->password)

        ]);

        return redirect()->route('dashboard')->with('status', 'You have been registered');

    }

}
