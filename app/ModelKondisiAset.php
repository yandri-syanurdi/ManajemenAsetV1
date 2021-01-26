<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class ModelKondisiAset extends Model
{
  protected $table = "kondisi_aset";
  protected $primaryKey = 'id';
  public $timestamps = false;
  protected $fillable = [
    "kondisi",
    "tanggal_kondisi",
    "id_aset",
    "deskripsi",
	  "gambar"
  ];
  public function hitungAsetBerdasarkanKondisi($kondisi)
  {
    $hitung_kondisi = DB::select("SELECT 
                          COUNT(data_kondisi.kondisi) AS kondisi 
                        FROM (SELECT 
                                kondisi_aset.id,
                                kondisi_aset.kondisi 
                                FROM 
                                kondisi_aset 
                                    JOIN 
                                      (SELECT MAX(kondisi_aset.id) as id_kondisi 
                                        FROM `kondisi_aset` 
                                        GROUP BY kondisi_aset.id_aset) kondisi_terakhir 
                                        ON kondisi_aset.id = kondisi_terakhir.id_kondisi) data_kondisi 
                                        WHERE data_kondisi.kondisi = ? ", [$kondisi]);
      return $hitung_kondisi[0]->kondisi;
  }
}
