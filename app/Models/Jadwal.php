<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Jadwal extends Model
{
    use HasFactory;
    
    protected $guarded = [];
    protected $table = 'jadwal';

    public function user()
    {
        return $this->belongsTo(User::class, 'dosen', 'id');
    }

    public function ListLink()
    {
        return $this->belongsTo(ListLink::class, 'id', 'id_jadwal');
    }

    public function ListPJ()
    {
        return $this->belongsTo(ListPJ::class, 'id', 'id_jadwal');
    }
}
