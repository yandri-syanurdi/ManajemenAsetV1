<?php

namespace App\Http\Controllers;
use App\ModelAset;
use App\ModelKondisiAset;
use Illuminate\Http\Request;
use Yajra\Datatables\Datatables;
use Illuminate\Support\Facades\Validator;

class KondisiAset extends Controller
{
    public function index($id_aset, Request $request)
    {
        $request->session()->put("id_aset", $id_aset);
        $data['data_aset'] = ModelAset::find($id_aset);
        $data['id_aset'] = $id_aset;
        return view("kondisi_aset_read", $data);
    }

    public function create($id_aset, Request $request)
    {
        $data['data_aset'] = ModelAset::find($id_aset);
        return view("kondisi_aset_add", $data);
    }

    public function store($id_aset, Request $request)
    {
        
        $data_kondisi_aset = $request->all();
        $data_kondisi_aset['id_aset'] = $id_aset;
        $gambar = $request->file("gambar");
        $nama_gambar = time()."_".$gambar->getClientOriginalName();
        $gambar->move("images/", $nama_gambar);
        $data_kondisi_aset['gambar'] = $nama_gambar; // memindahkan gamabr kedalam folder public/images
        $data_kondisi_aset['tanggal_kondisi'] .= " ".$data_kondisi_aset['jam_kondisi'];
        ModelKondisiAset::create($data_kondisi_aset);
        return redirect("aset/".$request->session()->get("id_aset")."/kondisi-aset");
    }

    public function edit($id_aset, $id, Request $request)
    {
        $data['data_aset'] = ModelAset::find($id_aset);
        $data['detail'] = ModelKondisiAset::find($id);
        $tgl_kondisi = explode(" ", $data['detail']->tanggal_kondisi);
        $data['tgl'] = $tgl_kondisi[0];
        $data['jam'] = $tgl_kondisi[1];
        return view("kondisi_aset_edit", $data);
    }

    public function update($id_aset, $id, Request $request)
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
		return redirect("aset/".$request->session()->get("id_aset")."/kondisi-aset");
    }

    public function destroy($id_aset, $id, Request $request)
    {
        ModelKondisiAset::find($id)->delete();
        return redirect("aset/".$request->session()->get("id_aset")."/kondisi-aset");
    }
    
    public function datatable($id_aset, Request $request)
    {
      return datatables()->of(ModelKondisiAset::where("id_aset", $id_aset)->orderBy('tanggal_kondisi', 'desc')->get())->toJson();
    }
}
