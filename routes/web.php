<?php

use Illuminate\Support\Facades\Route;

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

use App\Http\Controllers\GodrejController;
Route::get('/', [GodrejController::class, 'index'])->name('godrej.index');
Route::get('/about-godrej', [GodrejController::class, 'aboutgodrej'])->name('godrej.about');
Route::get('/download', [GodrejController::class, 'catalog_download'])->name('godrej.catalog');

use App\Http\Controllers\ContactController;
Route::post('/contact-save', [ContactController::class, 'contact_save'])->name('contact.save');
Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

use App\Http\Controllers\ProductController;
Route::resource('/products',ProductController::class);
