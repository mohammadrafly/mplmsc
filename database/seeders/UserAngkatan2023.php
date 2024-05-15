<?php

namespace Database\Seeders;

use Carbon\Carbon;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\User as ModelUser;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserAngkatan2023 extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $names = [
            'Prima Junior Seven Manalu',
            'Pradnya Paramitha',
            'Inaayah Prada Banowati',
            'Reno Susetyo Bambang Nugroho',
            'Vinka Lestari',
            'Talitha Evania',
            'Fitri Amalia',
            'Abel Jackson Revano',
            'Rendy Siddiq',
            'Raisya Kanahaya Achmad',
            'Suparsa Briliantara',
            'Rizki Kurnia Rohman',
            'Eky Setiawati',
            'Destia Widya Putri',
            'Kayla Azizia Patricia Litiloli',
            'Elsha Angelita',
            'Ararya Athaya Wicaksana',
            'Raudhah Nur Azizah',
            'Asti Artika Putri',
            'Aulia Rofika Dewi',
            'Adela Netania Sihotang',
            'Muhammad Rendy Kurniawan',
            'Muhammad Riva\'i',
            'Dya Anggun Yunita Arifin',
            'Radityo Farrelyno',
            'Garneza Asqar Fauzi',
            'Ichlasul Amal',
            'Asha Ayu Valmaida',
            'Ahmad Fauzan Thahir',
            'Yoseva Ilona Viska',
            'Awwal Ghaniy Putra Siswanto',
            'Matthew Natanael Riung',
            'Irma Damayanti',
            'Azfairul Mudzaqy',
            'Bilmark Nicolas Sidabutar',
            'Siti Ballis Nihayatuzzain',
            'Audy Adriani',
            'Dita Salsabilla Putri',
            'Muhammad Rajesh Siddiq',
            'Muhammad Rafi Albani',
            'Muhammad Farhan',
            'Veryna Dewi Handayani',
            'Dinda Citra Azzahra',
            'Shafa Az Zahra Diantra',
            'Baghas Luis Shaputra',
            'Muhammad Aditya Putra Hartanto',
            'Fahrani Aulia Rahmi',
            'Mochamad Dimas Bagus Panji Astiko',
            'Wenang Sajiwo Lihare',
            'Muhamad Fauz Jahfal',
            'Panca Adjie Pamungkas',
            'Jonatan Steven Simamora',
            'Bugi Alifya',
            'Benedictus Rainhard Hamonangan',
            'Anandito Varell Ekaputra Maghfirdy',
            'Muhammad Raffi Fahrezi',
            'Audrey Nabil Abhista',
            'Sabrina Ahmad',
            'Aura Salsabillah Dwi Clandestine',
            'Devi Puspita Sari',
            'Nabila Calista',
            'Chiara Zahra Maulani',
            'Muhammad Naufal Mulya Pratama',
            'Dian Panca Rachmawati',
            'Na\'il Javier Giwandew Febrian'
        ];        

        $users = [];

        $nim = 1523423001;

        foreach ($names as $name) {
            $hashedPassword = Hash::make((string) $nim);
            $users[] = [
                'name' => $name,
                'email' => null,
                'nim' => $nim++,
                'angkatan' => '2023',
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
