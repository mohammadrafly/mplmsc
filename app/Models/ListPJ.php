<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ListPJ extends Model
{
    use HasFactory;

    protected $guarded = [];
    protected $table = 'list_pj';

    public function user()
    {
        return $this->belongsTo(User::class, 'id_mahasiswa', 'id');
    }

    public function jadwal()
    {
        return $this->belongsTo(Jadwal::class, 'id_jadwal', 'id');
    }
}
