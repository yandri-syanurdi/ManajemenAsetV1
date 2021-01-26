<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\ModelLokasi;

class Lokasi extends Controller
{
    public function index(Request $request)
    {
			return response()->json(ModelLokasi::all());
    }
	
	public function show(Request $request, $id = null)
    {
			return response()->json(ModelLokasi::find($id));	
    }

    public function store(Request $request)
    {
        ModelLokasi::create($request->all());
        return response()->json("oke");
    }

    public function edit(Request $request, $id)
    {
        $edit = ModelLokasi::find($id);
		$edit->nama_lokasi = $request->input("nama_lokasi");
		$edit->save();
		return response()->json("oke");
    }

    public function destroy(Request $request, $id)
    {
        ModelLokasi::find($id)->delete();
        return response()->json("oke");
    }
    
}
