<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Jadwal as ModelJadwal;
use Carbon\Carbon;

class Jadwal extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $dataJadwal = [];

        $namaJadwal = [
            'Sistem Informasi Manajemen (SIM)',
            'Hukum Laut & Pengangkutan',
            'Manajemen Logistik',
            'Tarif Jasa Transportasi',
            'Teaching Factory',
            'Pemrograman Bidang Pelabuhan & Logistik',
            'Sistem Jaringan Transportasi',
            'Sistem & Bisnis Pelabuhan',
            'Marine Polution',
            'Operasi Pelayaran',
            'Statistika Terapan',
            'Pergudangan',
            'Pengetahuan Kapal',
            'Pelayanan Pelanggan',
            'Perawatan Fasilitas Pelabuhan',
            'Akuntansi Manajemen',
            'Supply Chain Management',
            'Hinterland Pelabuhan',
            'Manajemen Mutu',
            'Port Performance Indicator',
            'K3 dan HSSE Pelabuhan',
            'Matematika Terapan'
        ];

        $sks = [
            3, 2, 2, 2, 2, 3, 3, 3, 3,
            2, 3, 2, 2, 2, 3, 2, 3,
            2, 2, 2, 3, 2, 3, 2
        ];

        $kodeSeksi = [
            '1523400001/1523400002',
            '1523400003/1523400004',
            '1523400005/1523400006',
            '1523400007/1523400008',
            '1523400009/1523400010',
            '1523400011/1523400012',
            '1523400013/1523400014',
            '1523400015/1523400016',
            '1523400017/1523400018',
            '1523400019/1523400020',
            '1523400021/1523400022',
            '1523400023/1523400024',
            '1523400025/1523400026',
            '1523400027/1523400028',
            '1523400029/1523400030',
            '1523400031/1523400032',
            '1523400033/1523400034',
            '1523400035/1523400036',
            '1523400037/1523400038',
            '1523400039/1523400040',
            '1523400041/1523400042',
            '1523400043/1523400044'
        ];

        $kodeMatkul = [
            15230533, 15230542, 15230682, 15230732, 15230032, 15230123, 15230133, 15230143, 15230163,
            15230602, 15230573, 15230612, 15230622, 15230702, 15230073, 15230672, 15230083,
            15230682, 15230732, 15230252, 15230432, 15230692, 15230023, 15230662
        ];

        $idDosen = [
            217, 221, 219, 215, 217, 219, 215, 219, 220, 217, 214, 219, 221, 219, 215, 218, 221, 218, 216, 215, 217, 221, 219, 221
        ];

        $tahun = [
            '2021',
            '2021',
            '2021',
            '2021',
            '2021',
            '2021',
            '2021',
            '2021',
            '2021',
            '2022',
            '2022',
            '2022',
            '2022',
            '2022',
            '2022',
            '2022',
            '2022',
            '2023',
            '2023',
            '2023',
            '2023',
            '2023',
            '2023',
            '2023',
        ];

        $hari = [
            'Senin',
            'Selasa',
            'Selasa',
            'Jumat',
            'Selasa',
            'Senin',
            'Rabu',
            'Senin',
            'Rabu',
            'Jumat',
            'Rabu',
            'Selasa',
            'Selasa',
            'Rabu',
            'Kamis',
            'Selasa',
            'Jumat',
            'Rabu',
            'Jumat',
            'Jumat',
            'Rabu',
            'Senin',
            'Kamis',
            'Senin'
        ];

        $jam = [
            '10.00 - 11.50',
            '13.00 - 14.50',
            '10.00 - 11.50',
            '13.00 - 14.50',
            '08.00 - 09.50',
            '08.00 - 09.50',
            '13.00 - 14.50',
            '13.00 - 14.50',
            '10.00 - 11.50',
            '13.00 - 14.50',
            '10.00 - 11.50',
            '08.00 - 09.50',
            '15.00 - 16.50',
            '13.00 - 14.50',
            '13.00 - 14.50',
            '13.00 - 14.50',
            '08.00 - 09.50',
            '10.00 - 11.50',
            '10.00 - 11.50',
            '08.00 - 09.50',
            '08.00 - 09.50',
            '13.00 - 14.50',
            '08.00 - 10.30',
            '16.00 - 17.50',
        ];

        foreach ($namaJadwal as $index => $jadwal) {
            $dataJadwal[] = [
                'tahun' => $tahun[$index],
                'nama_jadwal' => $jadwal,
                'jadwal' => '',
                'hari' => $hari[$index],
                'jam' => $jam[$index],
                'sks' => $sks[$index],
                'kode_seksi' => $kodeSeksi[$index],
                'kode_matkul' => $kodeMatkul[$index],
                'dosen' => $idDosen[$index],
                'koneksi' => 'offline',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ];
        }
    
        ModelJadwal::insert($dataJadwal);
    }
}
