<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class ModelLokasi extends Model
{
  protected $table = "lokasi";
  protected $primaryKey = 'id';
  public $timestamps = false;
  protected $fillable = [
    "nama_lokasi",
  ];

  public function getJumlahAsetByLokasi()
  {
    return DB::select("SELECT lokasi.*, count(aset.id) AS jumlah_aset FROM `lokasi` LEFT JOIN aset ON lokasi.id = aset.id_lokasi GROUP BY lokasi.id ");
  }
}
