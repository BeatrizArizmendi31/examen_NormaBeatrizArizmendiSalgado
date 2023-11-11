<?php

use App\Http\Controllers\UsuariosController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::post('/create', [UsuariosController::class, 'create'])->name('usuarios.create');
Route::get('/usuarios', [UsuariosController::class, 'index'])->name('usuarios.index');
Route::post('/destroy', [UsuariosController::class, 'destroy'])->name('usuarios.destroy');
Route::get('/show/{id}', [UsuariosController::class, 'show'])->name('usuarios.show');
Route::post('/update', [UsuariosController::class, 'update'])->name('usuarios.update');
