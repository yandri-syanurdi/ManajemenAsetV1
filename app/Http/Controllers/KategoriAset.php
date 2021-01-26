<?php

namespace App\Http\Controllers;
use Yajra\Datatables\Datatables;
use Illuminate\Http\Request;
use App\ModelKategoriAset;

class KategoriAset extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      return view("kategori_aset_read");
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view("kategori_aset_add");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        ModelKategoriAset::create($request->all());
        return redirect("kategori-aset");
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data['detail'] = ModelKategoriAset::find($id);
        return view("kategori_aset_edit", $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $aset = $request->all();
        unset($aset['_token']);
        ModelKategoriAset::where("id", $id)->update($aset);
		return redirect("kategori-aset");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        ModelKategoriAset::find($id)->delete();
        return redirect("kategori-aset");
    }
    
    public function datatable(Request $request)
    {
      return datatables()->of(ModelKategoriAset::all(
        "id",
        "kode_kategori",
        "nama_kategori",
        "kode_barang"
        ))->toJson();
    }
}
