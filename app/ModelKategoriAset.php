<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ModelKategoriAset extends Model
{
  protected $table = "kategori_aset";
  protected $primaryKey = 'id';
  public $timestamps = false;
  protected $fillable = [
    "kode_kategori",
    "nama_kategori",
    "kode_barang",
  ];
}
