<?php

namespace Database\Seeders;


use Carbon\Carbon;
use App\Models\User as ModelUser;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserAngkatan2022 extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $names = [
            'Rayhan Dhevano Aufaa',
            'Kutaibah Al Muharrir',
            'Rizki Hamdallah Habel',
            'Dewa Dwi Putra',
            'Omega Trifena Laurenz Piyd',
            'Elang Alifian Marvin',
            'Argirinata Pristanto',
            'Alphonsus Christian Gavrie',
            'Dimas Bayu Maulana',
            'Danisa Aryani',
            'Adelio Shatara Nugraha',
            'Reina Mayang Dhenarisa',
            'Lewi Barkah',
            'Muhammad Zidan',
            'Rizky Ramadhani Putri',
            'Muhammad Nanda Gymnastiar',
            'Pangeran Eduardo Haloho',
            'Mohammad Farhan Appliansyach',
            'Mukhammad Alginat Romadhon',
            'Topan Adi Saputra',
            'Nabil Shafwan',
            'Ariel Leonard Jefferson Lumalesil',
            'Qian Nugraha s',
            'Novia Triningsih',
            'Fikri Aditya Mahendra',
            'Imam Faishal Zailani',
            'Meliana Dwi Ayuningtias',
            'Muhammad Khalish Al-Viqri',
            'Marini Andriyani Putri',
            'Marchel Antonio Sinaga',
            'Tramaditya Kustiawan',
            'Keisha Yudhistira',
            'Hilmy Yaskur',
            'Haura Luthfiyah',
            'Amanda Farliany Hidayat',
            'Fitri Anggraeni Puspitaningrum',
            'Muhammad Fathur Rizki',
            'Fahri Akbar Kurniawan',
            'Fadila Fanifia',
            'Muhamad Nur Fajar',
            'Alia Ingrid Pradina',
            'Bella Trisya Almira',
            'Miftahul Arzaq',
            'Natasya Putri Khalistia',
            'Leonardus Panggih Yudanto',
            'Adam Fikri',
            'Dewi Setianingsih',
            'Rifaldi Faturrahman',
            'Angga Dwi Ardiansyah',
            'Muhammad thoriq arkan',
            'Kaysar Wahyu Darmawan',
            'Naya Rahmauliya Syahputri',
            'Muhammad Raihan Palevi',
            'Muhammad azzi rasha',
            'Dollar Ledgard Galaska',
            'Tazkia Mutiara Dewanti',
            'Christian Gomgom Nathanael Siallagan',
            'Duta Rizky Lawangga',
            'Narul Hiqmal Fadzry',
            'Muhammad Reza Alim Pratama',
            'Muhammad Saddam Widodo',
            'Ilham Wiyata Dewandana',
            'Dwi Wahyu Salsabila',
            'Lamro Benediktus'
        ];

        $users = [];

        $nim = 1523422001;

        foreach ($names as $name) {
            $hashedPassword = Hash::make((string) $nim);
            $users[] = [
                'name' => $name,
                'email' => null,
                'nim' => $nim++,
                'angkatan' => '2022',
                'password' => $hashedPassword,
                'usertype' => 'mahasiswa',
                'foto' => '',
                'created_at' => Carbon::now(), 
                'updated_at' => Carbon::now()
            ];
        }

        ModelUser::insert($users);
    }
}
