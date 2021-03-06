<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Task;

class TaskController extends Controller
{
    
    public function __construct() 
    {

        $this->middleware(['auth', 'disableback']);

    }

    public function index()
    {

        $tasks = Task::orderBy('id', 'desc')->paginate(10);

        return view('tasks.index', [

            'tasks' => $tasks

        ]);

    }

    public function store(Request $request)
    {

        $this->validate($request, [

            'body' => ['required', 'max:255']

        ]);

        auth()->user()->tasks()->create([

            'body' => $request->body

        ]);

        return redirect()->route('tasks')->with('status', 'You have added a new task');

    }

    public function show($id)
    {
        
    }

    public function edit(Task $task)
    {

        return view('tasks.create')->with('task', $task);

    }

    public function update(Request $request)
    {
        
        $task = Task::find($request->id);

        $this->validate($request, [

            'body' => ['required', 'max:255']

        ]);

        $task->body = $request->body;

        $task->save();

        return redirect()->route('tasks')->with('status', 'You have updated a task');

    }

    public function delete(Task $task)
    {

        return view('tasks.delete')->with('task', $task);

    }

    public function destroy(Request $request)
    {

        $task = Task::find($request->id);

        $task->delete();

        return redirect()->route('tasks')->with('status', 'You have deleted a task');

    }

}
