@extends('layouts.main')

@section('content')

<div class="flex justify-center">
    <div class="w-11/12 sm:w-7/12 bg-white p-6 rounded-lg">
        Login
    </div>
</div>

<br>

<div class="flex justify-center">
    <div class="w-11/12 sm:w-7/12 bg-white p-6 rounded-lg">

        <form action="{{ route('login') }}" method="POST">

            @csrf

            @if (session('status'))
                <div class="bg-white-500 p-4 rounded-lg mb-4 text-red-400 text-center">
                    {{ session('status') }}
                </div><br>
            @endif

            <div class="mb-4">
                <label for="email" class="sr-only">Email</label>
                <input type="email" name="email" id="email" placeholder="Email" class="bg-gray-100 border-2 w-full p-4 rounded-lg" value="{{ old('email') }}">

                @error('email')
                    <div class="text-red-500 mt-2 text-sm">
                        {{ $message }}
                    </div>
                @enderror
            </div>

            <div class="mb-4">
                <label for="password" class="sr-only">Password</label>
                <input type="password" name="password" id="password" placeholder="Password" class="bg-gray-100 border-2 w-full p-4 rounded-lg">

                @error('password')
                    <div class="text-red-500 mt-2 text-sm">
                        {{ $message }}
                    </div>
                @enderror
            </div>

            <div class="mb-4">
                <div class="flex items-center">
                    <input type="checkbox" name="remember" id="remember" class="mr-2">
                    <label for="remember">Remember me</label>
                </div>
            </div>

            <div class="mb-4">
                <input type="submit" name="log" id="log" value="Login" class="bg-green-500 text-white px-4 py-3 rounded font-medium">
            </div>

        </form>
    </div>
</div>

@endsection