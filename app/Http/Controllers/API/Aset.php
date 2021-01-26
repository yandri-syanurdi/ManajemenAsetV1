<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\ModelAset;
use App\ModelKondisiAset;
use DB;

class Aset extends Controller
{
    
    public function kondisiku($id, Request $request)
    {
        if($id == "Total") {
                return response()->json([
                    'success'=>true, 
                    'message'=>'string', 
                    // 'results'=>ModelAset::with('lokasi')->get()
                    // 'results'=>ModelAset::where("id_lokasi", $id)->with('lokasi')->get()
                    // 'results'=>DB::select("SELECT  kondisi_aset.id, kondisi_aset.kondisi, kondisi_aset.tanggal_kondisi, kondisi_aset.id_aset, kondisi_aset.deskripsi, kondisi_aset.gambar, aset.id, aset.kode_aset, aset.nama_aset, aset.id_lokasi, aset.deskripsi, aset.created_at, aset.id_kategori, aset.kode_meja
                    // FROM kondisi_aset INNER JOIN aset
                    // ON kondisi_aset.id_aset=aset.id")

                    //'results'=>DB::select("SELECT * FROM `kondisi_aset` order by kondisi_aset.id DESC")
                    //  'results'=>DB::select("SELECT DISTINCT kondisi_aset.id_aset FROM `kondisi_aset` order by kondisi_aset.id DESC")
                    // 'results'=>DB::select("SELECT kondisi_aset.id_aset, kondisi_aset.id FROM `kondisi_aset` GROUP BY kondisi_aset.id_aset")
                    // 'results'=>DB::select("SELECT kondisi_aset.id_aset, kondisi_aset.id FROM `kondisi_aset` GROUP BY kondisi_aset.id_aset ORDER BY kondisi_aset.id DESC LIMIT 0,10")
                    // 'results'=>DB::select(" SELECT * FROM `kondisi_aset` WHERE kondisi_aset.id IN (SELECT MAX(kondisi_aset.id) FROM `kondisi_aset` GROUP BY kondisi_aset.id_aset)")
                    'results'=>DB::select(" SELECT * FROM `kondisi_aset` WHERE kondisi_aset.id IN (SELECT MAX(kondisi_aset.id) FROM `kondisi_aset` WHERE kondisi_aset.kondisi='Damaged' GROUP BY kondisi_aset.id_aset )")
                   //  'results'=>DB::select(" SELECT * FROM `kondisi_aset` WHERE kondisi_aset.id IN (SELECT MAX(kondisi_aset.id) FROM `kondisi_aset` WHERE kondisi_aset.id>=MAX(kondisi_aset.id) GROUP BY kondisi_aset.id_aset )")
                ]);
        }
        else{
            	return response()->json([
                    'success'=>true, 
                    'message'=>'string', 
                    // 'results'=>ModelAset::with('lokasi')->get()
                    // 'results'=>ModelAset::where("id_lokasi", $id)->with('lokasi')->get()
                    'results'=>DB::select("SELECT 
					
					kondisi_aset.id, kondisi_aset.kondisi, 
					kondisi_aset.tanggal_kondisi, kondisi_aset.id_aset, kondisi_aset.deskripsi, 
					kondisi_aset.gambar, 
					
					aset.id, aset.kode_aset, aset.nama_aset, aset.id_lokasi, 
					aset.deskripsi, aset.created_at, aset.id_kategori, aset.kode_meja
					
                    FROM kondisi_aset INNER JOIN aset
                    ON kondisi_aset.id_aset=aset.id WHERE kondisi_aset.kondisi='$id'")
                ]);
        }
    }
    
   
    
    public function yandrid($id, Request $request)
    {
        return response()->json([
            'success'=>true, 
            'message'=>'string', 
            'results'=>DB::select("SELECT 
             data_kondisi.id, data_kondisi.kondisi, data_kondisi.nama_aset
          FROM (SELECT 
                  kondisi_aset.id,
                  kondisi_aset.kondisi,
                  kondisi_aset.tanggal_kondisi,
                  kondisi_aset.id_aset,
                  kondisi_aset.deskripsi,
                  kondisi_aset.gambar,
                  
                  aset.kode_aset, aset.nama_aset, aset.id_lokasi, 
				  aset.created_at, aset.id_kategori, aset.kode_meja
                  
                  FROM 
                  kondisi_aset INNER JOIN aset
                    ON kondisi_aset.id_aset=aset.id 
                      JOIN 
                        (SELECT MAX(kondisi_aset.id) as id_kondisi 
                          FROM `kondisi_aset` 
                          GROUP BY kondisi_aset.id_aset) kondisi_terakhir 
                          ON kondisi_aset.id = kondisi_terakhir.id_kondisi) data_kondisi 
                          WHERE data_kondisi.kondisi = '$id'")
        ]); 	
            	
    }
    
    
    public function yandril($id, Request $request)
    {
        return response()->json([
            'success'=>true, 
            'message'=>'string', 
            'results'=>DB::select("SELECT 
             * 
          FROM (SELECT 
                  kondisi_aset.id,
                  kondisi_aset.kondisi,
                  kondisi_aset.tanggal_kondisi,
                  kondisi_aset.id_aset,
                  kondisi_aset.deskripsi,
                  kondisi_aset.gambar,
                  
                  aset.kode_aset, aset.nama_aset, aset.id_lokasi, 
				  aset.created_at, aset.id_kategori, aset.kode_meja,
                  
                  (aset.id) myid,
                  (aset.deskripsi) mydesc
                  
                  FROM 
                  kondisi_aset INNER JOIN aset
                    ON kondisi_aset.id_aset=aset.id 
                      JOIN 
                        (SELECT MAX(kondisi_aset.id) as id_kondisi 
                          FROM `kondisi_aset` 
                          GROUP BY kondisi_aset.id_aset) kondisi_terakhir 
                          ON kondisi_aset.id = kondisi_terakhir.id_kondisi) data_kondisi 
                          WHERE data_kondisi.kondisi = '$id'")
        ]); 	
            	
    }
    
    public function yandrio($id, Request $request)
    {
        return response()->json([
            'success'=>true, 
            'message'=>'string', 
            'results'=>DB::select("SELECT 
                       *
          FROM (SELECT 
                 *
                  FROM 
                  kondisi_aset 
                      JOIN 
                        (SELECT MAX(kondisi_aset.id) as id_kondisi 
                          FROM `kondisi_aset` 
                          GROUP BY kondisi_aset.id_aset) kondisi_terakhir 
                          ON kondisi_aset.id = kondisi_terakhir.id_kondisi) data_kondisi 
                          WHERE data_kondisi.kondisi = '$id'
                          
                          INNER JOIN aset
						  ON kondisi_aset.id_aset=aset.id")
        ]);       
    }
    
    
    public function yandrie($id, Request $request)
    {
        return response()->json([
            'success'=>true, 
            'message'=>'string', 
            'results'=>DB::select("SELECT 
           data_kondisi.id, data_kondisi.kondisi
          FROM (SELECT 
                  kondisi_aset.id,
                  kondisi_aset.kondisi,
                  kondisi_aset.tanggal_kondisi,
                  kondisi_aset.id_aset,
                  kondisi_aset.deskripsi,
                  kondisi_aset.gambar 
                  FROM 
                  kondisi_aset 
                      JOIN 
                        (SELECT MAX(kondisi_aset.id) as id_kondisi 
                          FROM `kondisi_aset` 
                          GROUP BY kondisi_aset.id_aset) kondisi_terakhir 
                          ON kondisi_aset.id = kondisi_terakhir.id_kondisi) data_kondisi 
                          WHERE data_kondisi.kondisi = ? ", [$id])
        ]); 	
            	
    }
	
	 public function yandriib($id, Request $request)
    {
            	return response()->json([
                    'success'=>true, 
                    'message'=>'string', 
                    'results'=>DB::select("SELECT 
                          kondisi_aset.id,
                          kondisi_aset.kondisi,
                          kondisi_aset.tanggal_kondisi,
                          kondisi_aset.id_aset,
                          kondisi_aset.deskripsi,
                          kondisi_aset.gambar,
						  
						  aset.id, aset.kode_aset, aset.nama_aset, aset.id_lokasi, 
						 aset.deskripsi, aset.created_at, aset.id_kategori, aset.kode_meja
					
                          FROM 
                          kondisi_aset  INNER JOIN aset
						  ON kondisi_aset.id_aset=aset.id
                              ")
                ]);
        
    }
    
    

	
	 public function yandrii($id, Request $request)
    {
            	return response()->json([
                    'success'=>true, 
                    'message'=>'string', 
                    'results'=>DB::select("SELECT 
                   *
                  FROM (SELECT 
                          kondisi_aset.id,
                          kondisi_aset.kondisi,
                          kondisi_aset.tanggal_kondisi,
                          kondisi_aset.id_aset,
                          kondisi_aset.deskripsi,
                          kondisi_aset.gambar 
                          FROM 
                          kondisi_aset 
                              JOIN 
                                (SELECT MAX(kondisi_aset.id) as id_kondisi 
                                  FROM `kondisi_aset` 
                                  GROUP BY kondisi_aset.id_aset) kondisi_terakhir 
                                  ON kondisi_aset.id = kondisi_terakhir.id_kondisi) data_kondisi 
                                  WHERE data_kondisi.kondisi = ? ", [$id])
                ]);
        
    }
    
    public function yandri($id, Request $request)
    {
            	return response()->json([
                    'success'=>true, 
                    'message'=>'string', 
                    'results'=>DB::select("SELECT 
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
                                  WHERE data_kondisi.kondisi = ? ", [$id])
                ]);
        
    }
    
    public function yandriz($id, Request $request)
    {
            	return response()->json([
                    'success'=>true, 
                    'message'=>'string', 
                    'results'=>DB::select("SELECT 
                   *
                  FROM (SELECT 
                          kondisi_aset.id,
                          kondisi_aset.kondisi,
                          kondisi_aset.tanggal_kondisi,
                          kondisi_aset.id_aset,
                          kondisi_aset.deskripsi,
                          kondisi_aset.gambar 
                          FROM 
                          kondisi_aset 
                              JOIN 
                                (SELECT MAX(kondisi_aset.id) as id_kondisi 
                                  FROM `kondisi_aset` 
                                  GROUP BY kondisi_aset.id_aset) kondisi_terakhir 
                                  ON kondisi_aset.id = kondisi_terakhir.id_kondisi) data_kondisi 
                                  WHERE data_kondisi.kondisi = ? ", [$id])
                ]);
        
    }
    
    public function index(Request $request)
    {
		return response()->json([
            'success'=>true, 
        'message'=>'string', 
        'results'=>ModelAset::with('lokasi')->get()
        ]);
    }


    public function indexku($id, Request $request)
    {
		return response()->json([
            'success'=>true, 
        'message'=>'string', 
        // 'results'=>ModelAset::with('lokasi')->get()
        'results'=>ModelAset::where("id_lokasi", $id)->with('lokasi')->get()
        ]);
    }


	
	public function show($id)
    {
        $data_aset = ModelAset::where("kode_aset", $id)->with('kondisi_aset')->first();
        // $data_aset = ModelAset::where("id_lokasi", $id)->with('kondisi_aset')->first();
		return response()->json($data_aset);	
    }

    public function store(Request $request)
    {
        $data_aset = $request->all();
		$data_aset['created_at'] = date("Y-m-d"); 
        ModelAset::create($data_aset);
        return response()->json("oke");
    }

    public function edit(Request $request, $id)
    {
        $edit = ModelAset::find($id);
		$edit->kode_aset = $request->input("kode_aset");
		$edit->nama_aset = $request->input("nama_aset");
		$edit->lokasi = $request->input("id_lokasi");
		$edit->deskripsi = $request->input("deskripsi");
		$edit->id_kategori = $request->input("id_kategori");
		$edit->save();
		return response()->json("oke");
    }

    public function destroy(Request $request, $id)
    {
        ModelAset::find($id)->delete();
        return response()->json("oke");
    }
    
}
