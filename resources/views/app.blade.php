<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="csrf" content="{{ csrf_token() }}">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
        <title>{{ config('app.name') }}</title>
        @viteReactRefresh 
        @vite(['resources/js/app.jsx', 'resources/css/app.css'])
        @inertiaHead
    </head>
    <body>
        @inertia
    </body>
</html>