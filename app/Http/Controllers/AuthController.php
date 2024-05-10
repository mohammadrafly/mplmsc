<?php

namespace App\Http\Controllers;

use Inertia\Inertia;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function Login(Request $request)
    {
        if ($request->isMethod('POST')) {
            $credentials = $request->only('email', 'password');

            $user = User::where('email', $credentials['email'])->first();
    
            if (!$user) {
                return response()->json([
                    'message' => 'Email tidak ada di database!', 
                    'code' => 404
                ]);
            }
    
            if (!Hash::check($credentials['password'], $user->password)) {
                return response()->json([
                    'message' => 'Password salah!', 
                    'code' => 404
                ]);
            }
    
            if (!Auth::attempt($credentials)) {
                return response()->json([
                    'message' => 'Gagal login!', 
                    'code' => 404
                ]);
            }
    
            return response()->json([
                'message' => 'Berhasil login', 
                'code' => 200, 
                'redirect' => route('dashboard')
            ]);    
        }
        
        return Inertia::render('Authentication/Login');
    }

    public function Logout()
    {
        Auth::logout();

        return response()->json([
            'message' => 'Berhasil Logout!', 
            'code' => 200, 
            'redirect' => route('login')
        ]);
    }
}
