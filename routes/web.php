<?php

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


// Route kelola data users/karyawan
Route::get('/users', "Users@index")->middleware('cek_login_web');
Route::get('/users/tambah', "Users@create")->middleware('cek_login_web');
Route::post('/users/tambah', "Users@store")->middleware('cek_login_web');
Route::get('/users/edit/{id}', "Users@edit")->middleware('cek_login_web');
Route::post('/users/edit/{id}', "Users@update")->middleware('cek_login_web');
Route::get('/users/hapus/{id}', "Users@destroy")->middleware('cek_login_web');

// EOF Route kelola data users/karyawan


Route::get('/kategori-aset', "KategoriAset@index")->middleware('cek_login_web');
Route::get('/kategori-aset/tambah', "KategoriAset@create")->middleware('cek_login_web');
Route::post('/kategori-aset/tambah', "KategoriAset@store")->middleware('cek_login_web');
Route::get('/kategori-aset/edit/{id}', "KategoriAset@edit")->middleware('cek_login_web');
Route::post('/kategori-aset/edit/{id}', "KategoriAset@update")->middleware('cek_login_web');
Route::get('/kategori-aset/hapus/{id}', "KategoriAset@destroy")->middleware('cek_login_web');

Route::get('/kondisi-aset', "KondisiAset@index")->middleware('cek_login_web');
Route::get('/kondisi-aset/tambah', "KondisiAset@create")->middleware('cek_login_web');
Route::post('/kondisi-aset/tambah', "KondisiAset@store")->middleware('cek_login_web');
Route::get('/kondisi-aset/edit/{id}', "KondisiAset@edit")->middleware('cek_login_web');
Route::post('/kondisi-aset/edit/{id}', "KondisiAset@update")->middleware('cek_login_web');
Route::get('/kondisi-aset/hapus/{id}', "KondisiAset@destroy")->middleware('cek_login_web');

Route::get('/aset', "Aset@index")->middleware('cek_login_web');
Route::get('/aset/tambah', "Aset@create")->middleware('cek_login_web');
Route::post('/aset/tambah', "Aset@store")->middleware('cek_login_web');
Route::get('/aset/edit/{id}', "Aset@edit")->middleware('cek_login_web');
Route::post('/aset/edit/{id}', "Aset@update")->middleware('cek_login_web');
Route::get('/aset/hapus/{id}', "Aset@destroy")->middleware('cek_login_web');
Route::get('/aset/qr', "Aset@qrcode_aset")->middleware('cek_login_web');
Route::post('/aset/cetak-qr', "Aset@cetak_qrcode")->middleware('cek_login_web');


Route::get('/aset/{id_aset}/kondisi-aset', "KondisiAset@index")->middleware('cek_login_web');
Route::get('/aset/{id_aset}/kondisi-aset/tambah', "KondisiAset@create")->middleware('cek_login_web');
Route::post('/aset/{id_aset}/kondisi-aset/tambah', "KondisiAset@store")->middleware('cek_login_web');
Route::get('/aset/{id_aset}/kondisi-aset/edit/{id}', "KondisiAset@edit")->middleware('cek_login_web');
Route::post('/aset/{id_aset}/kondisi-aset/edit/{id}', "KondisiAset@update")->middleware('cek_login_web');
Route::get('/aset/{id_aset}/kondisi-aset/hapus/{id}', "KondisiAset@destroy")->middleware('cek_login_web');

Route::get('/lokasi', "Lokasi@index")->middleware('cek_login_web');
Route::get('/lokasi/tambah', "Lokasi@create")->middleware('cek_login_web');
Route::post('/lokasi/tambah', "Lokasi@store")->middleware('cek_login_web');
Route::get('/lokasi/edit/{id}', "Lokasi@edit")->middleware('cek_login_web');
Route::post('/lokasi/edit/{id}', "Lokasi@update")->middleware('cek_login_web');
Route::get('/lokasi/hapus/{id}', "Lokasi@destroy")->middleware('cek_login_web');

Route::get('/beranda', "Halaman@beranda")->middleware('cek_login_web');
Route::get('/', "Halaman@show_login");
Route::post('/', "Users@cekLogin");

Route::get('/register', "Users@daftar");

Route::get('/logout', "Halaman@logout")->middleware('cek_login_web');

Route::get('/contoh-halaman', "Contoh@index");
Route::get('/contoh-api', "Contoh@contoh_api");