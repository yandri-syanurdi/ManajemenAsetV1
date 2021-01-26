<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ModelAset extends Model
{
  protected $table = "aset";
  protected $primaryKey = 'id';
  public $timestamps = false;
  protected $fillable = [
    "kode_aset",
    "nama_aset",
    "id_lokasi",
    "deskripsi",
    "created_at",
    "id_kategori",
    "kode_meja"
  ];
  public function kategori()
  {
      return $this->belongsTo('App\ModelKategoriAset','id_kategori', 'id');
  }
  public function kondisi_aset()
  {
      return $this->hasMany('App\ModelKondisiAset','id_aset', 'id');
  }
  public function lokasi()
  {
      return $this->hasOne('App\ModelLokasi', 'id', 'id_lokasi');
  }
}
