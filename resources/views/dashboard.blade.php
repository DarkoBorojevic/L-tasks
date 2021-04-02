@extends('layouts.main')

@section('content')

<div class="flex justify-center">

    <div class="w-11/12 sm:w-7/12 bg-white p-6 rounded-lg">

        @if (session('status'))
            <div class="bg-white-500 rounded-lg mb-4 text-green-400 text-left">
                {{ session('status') }}
            </div><br>
        @endif

        @auth

            <a href="">Dashboard</a> / <a href="">My profile</a>

        @endauth

        @guest

            You are not logged in

        @endguest
    </div>
</div>

@endsection