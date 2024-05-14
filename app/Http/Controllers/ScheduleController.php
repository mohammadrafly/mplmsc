<?php

namespace App\Http\Controllers;

use Inertia\Inertia;
use App\Models\Jadwal;
use App\Models\ListLink;
use App\Models\ListPJ;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

class ScheduleController extends Controller
{
    public function schedule()
    {
        return Inertia::render('Dashboard/Schedule/Schedule', [
            'title' => 'Angkatan',
            'data' => Jadwal::all()->groupBy('tahun'),
        ]);
    }

    public function scheduleByYears($year)
    {
        return Inertia::render('Dashboard/Schedule/ScheduleByYear', [
            'title' => "Schedule {$year}",
            'data' => Jadwal::where('tahun', $year)->get(),
        ]);
    }

    public function scheduleByID(Request $request, $year, $id)
    {
        $jadwal = Jadwal::find($id);
        if ($request->isMethod('POST')) {
            $update = $jadwal->update(['koneksi' => $request->input('koneksi')]);
    
            if (!$update) {
                return response()->json([
                    'message' => 'Gagal update jadwal', 
                    'code' => 404
                ]);
            }
    
            return response()->json([
                'message' => 'Berhasil update jadwal', 
                'code' => 200
            ]);
        }
    
        return Inertia::render('Dashboard/Schedule/ScheduleByID', [
            'title' => $jadwal->nama_jadwal,
            'data' => Jadwal::with('user')->find($id),
            'auth' => Jadwal::where('id', $jadwal->id)->where('dosen', Auth::user()->id)->first(),
            'pj' => ListPJ::where('id_jadwal', $id)->where('id_mahasiswa', Auth::user()->id)->first(),
        ]);
    }    

    public function scheduleSetting($year, $id)
    {
        $jadwal = Jadwal::find($id);
        return Inertia::render('Dashboard/Schedule/SettingSchedule', [
            'title' => $jadwal->nama_jadwal,
            'data' => Jadwal::with('user')->find($id),
            'buktiPerkuliahan' => ListLink::where('id_jadwal', $id)->where('type', 'bukti_perkuliahan')->first(),
            'buktiAbsensi' => ListLink::where('id_jadwal', $id)->where('type', 'absensi')->first(),
            'formPJ' => ListLink::where('id_jadwal', $id)->where('type', 'form_pj')->first(),
            'form56' => ListLink::where('id_jadwal', $id)->where('type', 'form_5_6')->first(),
            'recordPerkuliahan' => ListLink::where('id_jadwal', $id)->where('type', 'record_perkuliahan')->first(),
        ]);
    }

    public function scheduleUpdate($year, $id)
    {
        $jadwal = Jadwal::find($id);
        return Inertia::render('Dashboard/Schedule/UpdateSchedule', [
            'title' => $jadwal->nama_jadwal,
            'data' => Jadwal::with('user')->find($id),
        ]);
    }
}