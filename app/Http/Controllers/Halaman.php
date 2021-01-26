<?php

namespace App\Http\Controllers;

use App\ModelContoh;
use Yajra\Datatables\Datatables;
use Illuminate\Http\Request;
use App\ModelKondisiAset;
use App\ModelLokasi;

class Halaman extends Controller
{
    public function beranda ()
    {
        $lokasi_aset = new ModelLokasi();
        $kondisi_aset = new ModelKondisiAset();
        $data['kondisi_good'] = $kondisi_aset->hitungAsetBerdasarkanKondisi("Good");
        $data['kondisi_bad'] = $kondisi_aset->hitungAsetBerdasarkanKondisi("Bad");
        $data['kondisi_lost'] = $kondisi_aset->hitungAsetBerdasarkanKondisi("Lost");
        $data['kondisi_damaged'] = $kondisi_aset->hitungAsetBerdasarkanKondisi("Damaged");
        $data['lokasi_aset'] = $lokasi_aset->getJumlahAsetByLokasi();
        $data['kondisi_total'] = $data['kondisi_good'] + $data['kondisi_bad'] + $data['kondisi_lost'] + $data['kondisi_damaged'];
        return view("beranda", $data);
    }
    public function show_login()
    {
        return view("login");
    }

    public function logout(Request $request)
    {
        $request->session()->forget('id');
        $request->session()->forget('name');
        $request->session()->forget('email');
        $request->session()->forget('api_token');
        $request->session()->flash('alert.type', 'success');
        $request->session()->flash('alert.text', 'Anda berhasil logout!');

        return redirect("/");
    }
}