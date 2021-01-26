<?php

namespace App\Http\Controllers;
use Yajra\Datatables\Datatables;
use Illuminate\Http\Request;
use App\ModelProduk;

class Produk extends Controller
{
  protected $view = "produk_";
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      return view("produk_read");
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view("produk_add");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        ModelProduk::create($request->all());
        return redirect("produk");
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
        $data['detail'] = ModelProduk::find($id);
        return view("produk_edit", $data);
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
        $produk = $request->all();
        ModelProduk::where("id_produk", $id)->update($produk);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        ModelProduk::find($id)->delete();
        return redirect("produk");
    }
    
    public function datatable(Request $request)
    {
      return datatables()->of(ModelProduk::all())->toJson();
    }
}
