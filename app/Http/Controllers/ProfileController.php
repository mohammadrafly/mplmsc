<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Inertia\Inertia;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Response;

class ProfileController extends Controller
{
    public function index()
    {
        return Inertia::render('Dashboard/Profile/Profile', [
            'title' => 'Profile',
            'data' => User::find(Auth::user()->id)
        ]);
    }

    public function updateProfile(Request $request)
    {
        if ($request->isMethod('POST')) {
            $user = User::find(Auth::user()->id);

            $user->update($request->only('name', 'email', 'foto'));

            return response()->json([
                'message' => 'Berhasil update profile', 
                'code' => 200,
            ]);
        }

        return Inertia::render('Dashboard/Profile/UpdateProfile', [
            'title' => 'Update Profile',
            'data' => User::find(Auth::user()->id)
        ]);
    }

    public function updatePassword(Request $request)
    {
        if ($request->isMethod('POST')) {
            $user = User::find(Auth::user()->id);

            if (!Hash::check($request->old_password, $user->password)) {
                return Response::json(['message' => 'The old password is incorrect.', 'code' => 422]);
            }

            $user->update(['password' => bcrypt($request->password)]);

            return Response::json(['message' => 'Berhasil update password', 'code' => 200]);
        }

        return Inertia::render('Dashboard/Profile/UpdatePassword', [
            'title' => 'Update Password'
        ]);
    }
}
