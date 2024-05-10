<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\NotificationController;
use App\Http\Controllers\ProfileController;
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
                Route::get('/', 'index')->name('notification');
            });
        });
        Route::prefix('profile')->group(function() {
            Route::controller(ProfileController::class)->group(function() {
                Route::get('/', 'index')->name('profile');
                Route::match(['GET', 'POST'], 'update', 'updateProfile')->name('profile.update');
                Route::match(['GET', 'POST'], 'password/update', 'updatePassword')->name('password.update');
            });
        });
    });Route::prefix('dashboard')->group(function() {
        Route::controller(DashboardController::class)->group(function() {
            Route::get('/', 'index')->name('dashboard');
        });
        Route::prefix('notification')->group(function() {
            Route::controller(NotificationController::class)->group(function() {
                Route::get('/', 'index')->name('notification');
            });
        });
        Route::prefix('profile')->group(function() {
            Route::controller(ProfileController::class)->group(function() {
                Route::get('/', 'index')->name('profile');
            });
        });
    });
});