<?php

namespace Database\Seeders;

use Carbon\Carbon;
use App\Models\User as ModelUser;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class Dosen extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $names = [
            'Drs. Dadang Suyadi S., MS',
            'Ir. Tri Mulyono, MT',
            'Dr. Ir. Sylvira Ananda Azwar, M.Sc',
            'Siti Sahara, S.Pd., M.Pd',
            'Kencana Verawati, S.S.T., M.M. Tr',
            'Dr. Winoto Hadi, ST., MT',
            'Prof. Dr. Henita Rahmayanti, M.Si',
            'Vivian Karim Ladesi, ST., MT',
        ];
    
        $users = [];
        $counter = 1;
    
        foreach ($names as $name) {
            $email = 'dosen' . $counter . '@example.com';

            $counter++;

            $users[] = [
                'name' => $name,
                'email' => $email,
                'nim' => null,
                'angkatan' => '',
                'password' => Hash::make('password'),
                'usertype' => 'dosen',
                'foto' => '',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ];
        }
    
        ModelUser::insert($users);
    }    
}
