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
        if (Auth::check()) {
            return redirect()->route('dashboard');
        }

        if ($request->isMethod('POST')) {
            $credentialField = filter_var($request->input('username'), FILTER_VALIDATE_EMAIL) ? 'email' : 'nim';
            $credentials = [
                $credentialField => $request->input('username'),
                'password' => $request->input('password'),
            ];

            $user = User::where($credentialField, $credentials[$credentialField])->first();

            if (!$user) {
                return response()->json([
                    'message' => 'Email atau NIM tidak ada di database!', 
                    'code' => 404
                ]);
            }

            if (!Hash::check($credentials['password'], $user->password)) {
                return response()->json([
                    'message' => 'Password salah!', 
                    'code' => 404
                ]);
            }

            if (Auth::attempt($credentials, $request->filled('remember'))) {
                return response()->json([
                    'message' => 'Berhasil login', 
                    'code' => 200, 
                    'redirect' => route('dashboard')
                ]);  
            }

            return response()->json([
                'message' => 'Gagal login!', 
                'code' => 404
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
