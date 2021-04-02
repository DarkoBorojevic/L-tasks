@extends('layouts.main')

@section('content')

<div class="flex justify-center">
    <div class="w-11/12 sm:w-7/12 bg-white p-6 rounded-lg">

        <form action="{{ route('tasks') }}" method="POST">

            @csrf

            @if (session('status'))
                <div class="bg-white-500 p-4 rounded-lg mb-4 text-green-400 text-center">
                    {{ session('status') }}
                </div><br>
            @endif

            <div class="mb-4">
                <label for="body" class="sr-only">Body</label>
                <textarea name="body" id="body" rows="4" placeholder="Insert new task here..."></textarea>
                @error('body')
                    <div class="text-red-500 mt-2 text-sm">
                        {{ $message }}
                    </div>
                @enderror
            </div>

            <div class="mb-4">
                <input type="submit" name="add" id="add" value="Add new task" class="bg-purple-500 text-white px-4 py-3 rounded font-medium">
            </div>

        </form>
    </div>
</div>

<br>

<div class="flex justify-center">

    <div class="w-11/12 sm:w-7/12 bg-white p-6 rounded-lg">

        @if ($tasks->count())
            @foreach ($tasks as $task)
            <div class="mb-12">
                <p class="mb-2">Owner: {{ $task->user->email }} / {{ $task->created_at->diffForHumans() }}</p>
                <p class="text-green-400 mb-2">{{ $task->body }}</p>
                <div class="flex items-center">
                    <form action="" method="POST">
                        @csrf
                        <button type="submit" class="bg-red-500 text-white px-4 py-3 mr-1 rounded font-medium">Delete</button>
                    </form>
                    <a href="{{ route('edit', $task->id) }}" class="bg-green-500 text-white px-4 py-3 rounded font-medium">Edit</a>
                </div>
            </div>
            @endforeach

            <br>

            {{ $tasks->links() }}
        @else
            <p class="text-green-400 mb-2">There are no visible tasks</p>
        @endif

    </div>

</div>

@endsection