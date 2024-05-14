<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Notifikasi extends Model
{
    use HasFactory;

    protected $guarded = [];
    protected $table = 'notifikasi';

    public function jadwal()
    {
        return $this->belongsTo(Jadwal::class, 'id_jadwal', 'id');
    }
}
