<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\ModelKondisiAset;

class Halaman extends Controller
{
    public function beranda ()
    {
        $kondisi_aset = new ModelKondisiAset();
        $data['kondisi_good'] = $kondisi_aset->hitungAsetBerdasarkanKondisi("Good");
        $data['kondisi_bad'] = $kondisi_aset->hitungAsetBerdasarkanKondisi("Bad");
        $data['kondisi_lost'] = $kondisi_aset->hitungAsetBerdasarkanKondisi("Lost");
        $data['kondisi_damaged'] = $kondisi_aset->hitungAsetBerdasarkanKondisi("Damaged");
        $data['kondisi_total'] = $data['kondisi_good'] + $data['kondisi_bad'] + $data['kondisi_lost'] + $data['kondisi_damaged'];
        return response([
            'success'=>'true', 
            'message'=>'string', 
            'results'=>$data]);
    }
}
