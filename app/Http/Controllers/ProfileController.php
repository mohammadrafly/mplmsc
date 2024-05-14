<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Inertia\Inertia;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Str;

class ProfileController extends Controller
{
    public function index()
    {
        return Inertia::render('Dashboard/Profile/Profile', [
            'title' => 'Profile',
            'data' => User::find(Auth::user()->id),
            'urlFoto' => route('foto_user', Auth::user()->foto),
        ]);
    }

    public function updateProfile(Request $request)
    {
        if ($request->isMethod('POST')) {
            $user = User::find(Auth::user()->id);

            if ($request->hasFile('photo')) {
                $photo = $request->file('photo');

                $randomName = Str::random(10) . '.' . $photo->getClientOriginalExtension();

                $photo->storeAs('profile_photos', $randomName, 'public');

                $user->foto = $randomName;
            }
    
            $user->update([
                'name' => $request->input('name'),
                'email' => $request->input('email'),
            ]);

            return response()->json([
                'message' => 'Berhasil update profile', 
                'code' => 200,
            ]);
        }

        return Inertia::render('Dashboard/Profile/UpdateProfile', [
            'title' => 'Update Profile',
            'data' => User::find(Auth::user()->id),
            'urlFoto' => route('foto_user', Auth::user()->foto),
            'role' => Auth::user()->usertype,
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
