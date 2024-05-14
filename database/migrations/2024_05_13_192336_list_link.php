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
        Schema::create('list_link', function (Blueprint $table) {
            $table->id();
            $table->string('id_jadwal');
            $table->string('link');
            $table->enum('type', ['bukti_perkuliahan', 'absensi', 'form_pj', 'form_5_6', 'record_perkuliahan']);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('list_link');
    }
};
