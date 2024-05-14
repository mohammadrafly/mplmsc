<?php

namespace App\Http\Controllers;

use App\Models\Notifikasi;
use Illuminate\Support\Facades\Auth;
use Inertia\Inertia;
use Illuminate\Http\Request;

class NotificationController extends Controller
{
    public function index(Request $request)
    {
        if ($request->isMethod('POST')) {
            $notif = Notifikasi::find($request->id);
    
            if ($notif->read == '1') {
                return response()->json([
                    'message' => 'Notifikasi sudah dibaca sebelumnya!', 
                    'code' => 200
                ]);
            }

            $update = $notif->update(['read' => '1']);

            if (!$update) {
                return response()->json([
                    'message' => 'Oops, kek nya ada yang salah!', 
                    'code' => 404
                ]);
            }

            return response()->json([
                'message' => 'Notifikasi dibaca!', 
                'code' => 200
            ]);
        }

        return Inertia::render('Dashboard/Notification', [
            'title' => 'Notification',
            'data' => Notifikasi::with('jadwal')->where('id_user', Auth::user()->id)->get(),
        ]);
    }
}
