<?php

namespace App\Http\Controllers\API;

use App\ModelAset;
use App\ModelKondisiAset;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class KondisiAset extends Controller
{
    public function index($id_aset, Request $request)
    {
        $data_kondisi = ModelKondisiAset::join('aset', 'kondisi_aset.id_aset', 'aset.id')->where("aset.kode_aset", $id_aset)->orderBy('kondisi_aset.tanggal_kondisi', 'desc')->get();

		return response()->json($data_kondisi);
    }
	
	public function show($id_aset, Request $request, $id = null)
    {
		return response()->json(ModelKondisiAset::where("kode_aset", $id));	
    }

    public function store($id_aset, Request $request)
    {
        $valid = Validator::make($request->all(), [
            'gambar' => ['required'],
            'tanggal_kondisi' => ['required'],
            'jam_kondisi' => ['required']
        ]);
        if ($valid->fails()) {
            return response([
                'err' => $valid->errors(),
            ], 422);
        }
        $data_kondisi_aset = $request->all();
        $data_kondisi_aset['id_aset'] = ModelAset::where("kode_aset", $id_aset)->pluck("id")->first();
        $gambar = $request->file("gambar");
        $nama_gambar = time()."_".$gambar->getClientOriginalName();
        $gambar->move("images/", $nama_gambar);
        $data_kondisi_aset['gambar'] = $nama_gambar; // memindahkan gamabr kedalam folder public/images
        $data_kondisi_aset['tanggal_kondisi'] .= " ".$data_kondisi_aset['jam_kondisi'];
        ModelKondisiAset::create($data_kondisi_aset);
        return response()->json("oke");
    }

    public function edit($id_aset, Request $request, $id)
    {
        $aset = $request->all();
        if($request->hasFile("gambar"))
        {
            $gambar = $request->file("gambar");
            $nama_gambar = time()."_".$gambar->getClientOriginalName();
            $gambar->move("images/", $nama_gambar);
            $aset['gambar'] = $nama_gambar;
        }
        else
        {
            unset($aset['gambar']);
        }
        unset($aset['_token']);
        $aset['id_aset'] = $id_aset;
        $aset['tanggal_kondisi'] .= " ".$aset['jam_kondisi'];
        ModelKondisiAset::where("id", $id)->update($aset);
		return response()->json("oke");
    }

    public function destroy(Request $request, $id)
    {
        ModelKondisiAset::find($id)->delete();
        return response()->json("oke");
    }
    
}
