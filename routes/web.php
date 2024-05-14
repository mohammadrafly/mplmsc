<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\NotificationController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\ScheduleController;
use App\Http\Controllers\SchedulePJController;
use Illuminate\Support\Facades\Route;

Route::controller(AuthController::class)->group(function() {
    Route::match(['GET', 'POST'], '/', 'Login')->name('login');
});

Route::middleware('auth')->group(function() {
    Route::prefix('dashboard')->group(function() {
        Route::controller(AuthController::class)->group(function() {
            Route::get('logout', 'Logout')->name('logout');
        });
        Route::controller(DashboardController::class)->group(function() {
            Route::get('/', 'index')->name('dashboard');
        });
        Route::prefix('notification')->group(function() {
            Route::controller(NotificationController::class)->group(function() {
                Route::match(['GET', 'POST'], '/', 'index')->name('notification');
            });
        });
        Route::prefix('profile')->group(function() {
            Route::controller(ProfileController::class)->group(function() {
                Route::get('/', 'index')->name('profile');
                Route::match(['GET', 'POST'], 'update', 'updateProfile')->name('profile.update');
                Route::match(['GET', 'POST'], 'password/update', 'updatePassword')->name('password.update');
                Route::get('foto_user/{filename}', function ($filename) {
                    $path = storage_path('app/public/profile_photos/' . $filename);
                
                    if (!file_exists($path)) {
                        abort(404);
                    }
                
                    return response()->file($path);
                })->name('foto_user');
            });
        });
        Route::prefix('schedule')->group(function() {
            Route::controller(ScheduleController::class)->group(function() {
                Route::get('/', 'schedule')->name('schedule');
                Route::get('year/{year}', 'scheduleByYears')->name('schedule.year');
                Route::match(['GET', 'POST'], 'year/{year}/single/{id}', 'scheduleByID')->name('schedule.single');
                Route::get('year/{year}/single/{id}/setting', 'scheduleSetting')->name('schedule.setting');
                Route::match(['GET', 'POST'], 'year/{year}/single/{id}/setting/update', 'scheduleUpdate')->name('schedule.update');
            });
        });
        Route::prefix('schedule/pj')->group(function() {
            Route::controller(SchedulePJController::class)->group(function() {
                Route::get('/', 'schedule')->name('schedule');
                Route::get('year/{year}', 'scheduleByYears')->name('schedule.year');
                Route::match(['GET', 'POST'], 'year/{year}/single/{id}', 'scheduleByID')->name('schedule.single');
                Route::get('year/{year}/single/{id}/setting', 'scheduleSetting')->name('schedule.setting');
                Route::match(['GET', 'POST'], 'year/{year}/single/{id}/setting/update', 'scheduleUpdate')->name('schedule.update');
            });
        });
    });
});