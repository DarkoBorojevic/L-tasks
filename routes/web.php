<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\LogoutController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\TaskController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// get routes
Route::get('/', [DashboardController::class, 'index']);

Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

Route::get('/register', [RegisterController::class, 'index'])->name('register');

Route::get('/login', [LoginController::class, 'index'])->name('login');

Route::get('/tasks', [TaskController::class, 'index'])->name('tasks');

Route::get('/edit/{task}/', [TaskController::class, 'edit'])->name('edit');

Route::get('/delete/{task}/', [TaskController::class, 'delete'])->name('delete');

// post routes
Route::post('/tasks', [TaskController::class, 'store']);

Route::post('/tasks', [TaskController::class, 'update'])->name('update');

Route::post('/tasks', [TaskController::class, 'destroy'])->name('destroy');

Route::post('/register', [RegisterController::class, 'store']);

Route::post('/login', [LoginController::class, 'store']);

Route::post('/logout', [LogoutController::class, 'index'])->name('logout');
