<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\ModelKategoriAset;

class KategoriAset extends Controller
{
    public function index(Request $request)
    {
			return response()->json(ModelKategoriAset::all());
    }
	
	public function show(Request $request, $id = null)
    {
			return response()->json(ModelKategoriAset::find($id));	
    }

    public function store(Request $request)
    {
        ModelKategoriAset::create($request->all());
        return response()->json("oke");
    }

    public function edit(Request $request, $id)
    {
        $edit = ModelKategoriAset::find($id);
		$edit->kode_kategori = $request->input("kode_kategori");
		$edit->nama_kategori = $request->input("nama_kategori");
		$edit->save();
		return response()->json("oke");
    }

    public function destroy(Request $request, $id)
    {
        ModelKategoriAset::find($id)->delete();
        return response()->json("oke");
    }
    
}
