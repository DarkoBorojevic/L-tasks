<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>L-posts</title>
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    <style>
    textarea {
        display: block;
        width: 100%;
    }

    input[type="submit"] {
        cursor: pointer;
    }
    </style>
</head>
<body class="bg-gray-200 font-mono">
    <nav class="p-6 bg-white flex justify-between">

    @auth

        <ul class="flex items-center">
            <li><a href="#">Hello {{ auth()->user()->name }}!</a></li>
        </ul>

        <ul class="flex items-center">
            <li><a href="{{ route('dashboard') }}" class="p-3">Home</a></li>
            <li><a href="{{ route('tasks') }}" class="p-3">Tasks</a></li>
            <li>
                <form action="{{ route('logout') }}" method="POST" class="inline">
                    @csrf
                    <button type="submit">Logout</button>
                </form>
            </li>
        </ul>

    @endauth

    @guest

        <ul class="flex items-center">
            <li><a href="{{ route('login') }}" class="p-3">Login</a></li>
            <li><a href="{{ route('register') }}" class="p-3">Register</a></li>
        </ul>

    @endguest

    </nav>

    <br>

    @yield('content')

    <br>

</body>
</html>