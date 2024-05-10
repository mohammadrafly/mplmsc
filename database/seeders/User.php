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
        $users = [
            [
                'name' => 'Dosen',
                'email' => 'dosen@gmail.com',
                'password' => Hash::make('dosen'),
                'usertype' => 'dosen',
                'foto' => '',
                'created_at' => Carbon::now(), 
                'updated_at' => Carbon::now()
            ],
            [
                'name' => 'Mahasiswa',
                'email' => 'mahasiswa@gmail.com',
                'password' => Hash::make('mahasiswa'),
                'usertype' => 'mahasiswa',
                'foto' => '',
                'created_at' => Carbon::now(), 
                'updated_at' => Carbon::now()
            ],
        ];

        ModelUser::insert($users);
    }
}
