<?php

namespace App\Http\Controllers;
use App\ModelContoh;
use Illuminate\Http\Request;

class Contoh extends Controller
{
    public function index()
    {
        // // mengambil data
        // $data_contoh = ModelContoh::all();

        // // menambah data
        // ModelContoh::insert(array(
        //     "nama" => "Contoh nama",
        //     "kelas" => "Contoh kelas",
        // ));

        
        // ModelContoh::where("id", "1")->update(array(
        //     "nama" => "Contoh nama",
        //     "kelas" => "Contoh kelas",
        // ));

        // ModelContoh::where("id", "1")->delete();

        echo "
            <html>
                <head>
                </head>
                <body>
                    <u style='color: green;'> H </u>
                </body>
            </html>
        ";


    }

    public function contoh_api()
    {
        $contoh_data = array(
            "nama"  => "Contoh Nama",
            "kelas" => "COntoh kelas"
        );

        echo json_encode($contoh_data);
    }
}