@extends('layouts.main')

@section('content')

<div class="flex justify-center">
    <div class="w-11/12 sm:w-7/12 bg-white p-6 rounded-lg">
        Register
    </div>
</div>

<br>

<div class="flex justify-center">
    <div class="w-11/12 sm:w-7/12 bg-white p-6 rounded-lg">
        <form action="{{ route('register') }}" method="POST">

            @csrf

            <div class="mb-4">
                <label for="name" class="sr-only">Name</label>
                <input type="text" name="name" id="name" placeholder="Name" class="bg-gray-100 border-2 w-full p-4 rounded-lg" value="{{ old('name') }}">
                
                @error('name')
                    <div class="text-red-500 mt-2 text-sm">
                        {{ $message }}
                    </div>
                @enderror
            </div>

            <div class="mb-4">
                <label for="username" class="sr-only">Username</label>
                <input type="text" name="username" id="username" placeholder="Username" class="bg-gray-100 border-2 w-full p-4 rounded-lg" value="{{ old('username') }}">

                @error('username')
                    <div class="text-red-500 mt-2 text-sm">
                        {{ $message }}
                    </div>
                @enderror
            </div>

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
                <label for="password_confirmation" class="sr-only">Confirm password</label>
                <input type="password" name="password_confirmation" id="password_confirmation" placeholder="Confirm password" class="bg-gray-100 border-2 w-full p-4 rounded-lg">
            </div>

            <div class="mb-4">
                <input type="submit" name="reg" id="reg" value="Register" class="bg-blue-500 text-white px-4 py-3 rounded font-medium">
            </div>

        </form>
    </div>
</div>

@endsection