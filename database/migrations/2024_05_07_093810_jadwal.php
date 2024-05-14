<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('jadwal', function (Blueprint $table) {
            $table->id();
            $table->string('tahun');
            $table->string('nama_jadwal');
            $table->string('jadwal');
            $table->string('hari');
            $table->string('jam');
            $table->string('sks');
            $table->string('kode_seksi');
            $table->string('kode_matkul');
            $table->string('dosen');
            $table->enum('koneksi', ['online', 'offline']);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('jadwal');
    }
};
