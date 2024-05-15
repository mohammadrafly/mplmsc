<?php

namespace Database\Seeders;

use Carbon\Carbon;
use App\Models\User as ModelUser;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class User extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $names = [
            'Arsad Rifki Adhawi Farezan',
            'Taufik Nurochman',
            'Arief Hardi Rahman',
            'Sevia Dwi Astuti',
            'Erlisa Aulia',
            'Nabila Farraha Isha',
            'Monica Wulandari',
            'Alya Nurjanah',
            'Bagas Pragat Pamungkas',
            'Putri Wulandari',
            'Safira',
            'Widyanur Handari',
            'Dafa Arga Narendra',
            'Sabila Cintania Yamanda',
            'Faqih Dimas Suryadi',
            'Muhammad Wildan Dzikri',
            'Muhammad Irsad Syafiq',
            'Dhiyananda Haniifah Putri',
            'Rizky Yudi Prasetyo',
            'Bintang Ramadhan',
            'Faiz Ilham Mumtaz',
            'Gaizka Aqshal Razzandi Suryaningrat',
            'Yulia Putri Wulandari',
            'Ahmad Maulana',
            'Putra Fajar Aditya',
            'Erika Dian Maharani',
            'Nicholas Dwinovan',
            'Fakhri Najmuddin',
            'Wahyu Adila Pratama',
            'Banu Radyto Dwi Satrio',
            'Rizki Alim Novianto',
            'Muhamad Irfan Kresnadi',
            'Na\'ajla Andiza Putri',
            'Yohan Ananda Cahyono',
            'Bintang Arya Mahasyahputra',
            'Tiara Nur Angraini',
            'Rafida Rahma Aulia',
            'Bagas Permana',
            'Surya Alam',
            'Muhamad Ghufron',
            'Ikram Maulana Firdaus',
            'Annisa Nurliza',
            'Muhammad Rangga Hidayat',
            'Zaldi Sultani Zain',
            'Muhammad Viki Baihaki',
            'Ridho Tito Panigoro',
            'Muftiana Wildiansah',
            'Jerremy Vincen Errol',
            'Dhiwa Humairah Ninvika',
            'Raissa Azaria Andini',
            'Hendra Zulfikar',
            'Najla Saifana',
            'Tesar Agnia Arifian',
            'Farasabila Angeli Purnomo',
            'Miftaah Bagus Hartawan',
            'Billy Hendrawan',
            'Maulana Ikhsan Yazid',
            'Yolanda Junitasari',
            'Zahra Namiya Fitri',
            'Arif Rachman Dillah',
            'Fitri Khairunnisa',
            'Citra Amalia Riyadlul Jannah',
            'Indah Apsari Asmana Nurfitriani',
            'Dimas Rizki Saputra',
            'Satria Akbar Gumilang',
            'Bungaran Adi Prama',
            'Fatwa Pujangga Islami',
        ];

        $users = [];

        $nim = 1511521001;

        foreach ($names as $name) {
            $hashedPassword = Hash::make((string) $nim);
            $users[] = [
                'name' => $name,
                'email' => null,
                'nim' => $nim++,
                'angkatan' => '2021',
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
