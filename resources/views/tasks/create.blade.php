@extends('layouts.main')

@section('content')

<div class="flex justify-center">
    <div class="w-11/12 sm:w-7/12 bg-white p-6 rounded-lg">

        @if (isset($task))

        <form action="{{ route('tasks') }}" method="POST">

            @csrf

            @if (session('status'))
                <div class="bg-white-500 p-4 rounded-lg mb-4 text-green-400 text-center">
                    {{ session('status') }}
                </div><br>
            @endif

            <div class="mb-4">
                <label for="body" class="sr-only">Body</label>
                <textarea name="body" id="body" rows="4">{{ $task->body }}</textarea>
                @error('body')
                    <div class="text-red-500 mt-2 text-sm">
                        {{ $message }}
                    </div>
                @enderror
            </div>

            <div class="mb-4">
                <input type="submit" name="add" id="add" value="Update task" class="bg-purple-500 text-white px-4 py-3 rounded font-medium">
            </div>

        </form>

        @else

        <p class="text-green-400 mb-2">No task selected</p>

        @endif

    </div>
</div>

@endsection