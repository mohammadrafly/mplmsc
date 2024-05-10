<?php

namespace App\Http\Controllers;

use Inertia\Inertia;

class NotificationController extends Controller
{
    public function index()
    {
        return Inertia::render('Dashboard/Notification', [
            'title' => 'Notification'
        ]);
    }
}
