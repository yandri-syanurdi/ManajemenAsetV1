<?php

namespace App\Http\Controllers;
use Yajra\Datatables\Datatables;
use Illuminate\Http\Request;
use App\ModelLokasi;

class Lokasi extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      return view("lokasi_read");
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view("lokasi_add");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        ModelLokasi::create($request->all());
        return redirect("lokasi");
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
        $data['detail'] = ModelLokasi::find($id);
        return view("lokasi_edit", $data);
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
        ModelLokasi::where("id", $id)->update($aset);
		return redirect("lokasi");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        ModelLokasi::find($id)->delete();
        return redirect("lokasi");
    }
    
    public function datatable(Request $request)
    {
      return datatables()->of(ModelLokasi::all(
        "id",
        "nama_lokasi"))->toJson();
    }
}
