<?php

namespace App\Http\Controllers;

use Inertia\Inertia;
use App\Models\Jadwal;
use App\Models\ListLink;
use App\Models\ListPJ;
use App\Models\Notifikasi;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

class SchedulePJController extends Controller
{
    public function schedule()
    {
        return Inertia::render('Dashboard/PJ/Schedule', [
            'title' => 'Angkatan',
            'data' => Jadwal::all()->groupBy('tahun'),
        ]);
    }

    public function scheduleByYears($year)
    {
        return Inertia::render('Dashboard/PJ/ScheduleByYear', [
            'title' => "Schedule {$year}",
            'data' => ListPJ::with('jadwal')
                ->where('id_mahasiswa', Auth::user()->id)
                ->whereHas('jadwal', function($query) use ($year) {
                    $query->where('tahun', $year);
                })
                ->get(),
        ]);
    }
    
    public function scheduleByID(Request $request, $year, $id)
    {
        $jadwal = Jadwal::find($id);
        
        if (!$jadwal) {
            return response()->json([
                'message' => 'Jadwal not found', 
                'code' => 404
            ]);
        }

        if ($request->isMethod('POST')) {
            $update = $jadwal->update(['koneksi' => $request->input('koneksi')]);
    
            if (!$update) {
                return response()->json([
                    'message' => 'Gagal update jadwal', 
                    'code' => 404
                ]);
            }

            $users = User::all();
            foreach ($users as $user) {
                Notifikasi::insert([
                    'id_jadwal' => $id,
                    'id_user' => $user->id,
                    'message' => "Mata kuliah $jadwal->nama_jadwal dilaksanakan secara $request->koneksi",
                    'read' => '',
                    'created_at' => now()
                ]);
            }
    
            return response()->json([
                'message' => 'Berhasil update jadwal', 
                'code' => 200
            ]);
        }
    
        return Inertia::render('Dashboard/PJ/ScheduleByID', [
            'title' => $jadwal->nama_jadwal,
            'data' => Jadwal::with('user')->find($id),
            'auth' => Jadwal::where('id', $jadwal->id)->where('dosen', Auth::user()->id)->first(),
            'pj' => ListPJ::where('id_jadwal', $id)->where('id_mahasiswa', Auth::user()->id)->first(),
        ]);
    }    

    public function scheduleSetting($year, $id)
    {
        $jadwal = Jadwal::find($id);
                
        if (!$jadwal) {
            return response()->json([
                'message' => 'Jadwal not found', 
                'code' => 404
            ]);
        }

        return Inertia::render('Dashboard/PJ/SettingSchedule', [
            'title' => $jadwal->nama_jadwal,
            'data' => Jadwal::with('user')->find($id),
            'buktiPerkuliahan' => ListLink::where('id_jadwal', $id)->where('type', 'bukti_perkuliahan')->first(),
            'buktiAbsensi' => ListLink::where('id_jadwal', $id)->where('type', 'absensi')->first(),
            'formPJ' => ListLink::where('id_jadwal', $id)->where('type', 'form_pj')->first(),
            'form56' => ListLink::where('id_jadwal', $id)->where('type', 'form_5_6')->first(),
            'recordPerkuliahan' => ListLink::where('id_jadwal', $id)->where('type', 'record_perkuliahan')->first(),
        ]);
    }

    public function scheduleUpdate(Request $request, $year, $id)
    {
        $jadwal = Jadwal::find($id);
                
        if (!$jadwal) {
            return response()->json([
                'message' => 'Jadwal not found', 
                'code' => 404
            ]);
        }

        if ($request->isMethod('POST')) {
            $update = $jadwal->update([
                'hari' => $request->input('hari'),
                'jadwal' => $request->input('jadwal'),
                'jam' => $request->input('jam')
            ]);
    
            if (!$update) {
                return response()->json([
                    'message' => 'Gagal update jadwal', 
                    'code' => 404
                ]);
            }

            $users = User::all();
            foreach ($users as $user) {
                Notifikasi::insert([
                    'id_jadwal' => $id,
                    'id_user' => $user->id,
                    'message' => "Update informasi baru pada mata kuliah $jadwal->nama_jadwal",
                    'read' => '',
                    'created_at' => now()
                ]);
            }
    
            return response()->json([
                'message' => 'Berhasil update jadwal', 
                'code' => 200
            ]);
        }

        return Inertia::render('Dashboard/PJ/UpdateSchedule', [
            'title' => $jadwal->nama_jadwal,
            'data' => Jadwal::with('user')->find($id),
        ]);
    }
}
