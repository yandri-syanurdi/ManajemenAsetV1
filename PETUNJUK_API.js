// cari data aset bisa pakai qr code atau input
// METHOD : GET
var kode_aset = "kom11-11-110000"; // bisa diambil dari hasil scan atau input user
async function cariAsetByQrCode(kode_aset)
{
    var data_aset = await fetch.get("http://localhost:8000/api/aset/" + kode_aset)
    if(data_aset.data == "ok")
    {
        // berhasil mengambil data aset

    }
    else
    {
        // error
    }
}

// mengirim data kondisi terbaru
// METHOD : POST
var kode_aset = "kom11-11-110000";
var data_kondisi = {
    kondisi: "Good",   
    tanggal_kondisi: "2020-10-10",   
    jam_kondisi: "09:08",   
    gambar: "GAMBAR",
    deskripsi: '-'  
}
async function tambahKondisiAset(kode_aset, data_kondisi)
{
    var kirim_kondisi = await fetch.post("http://localhost:8000/api/aset/" + kode_aset + "/kondisi-aset/tambah", data_aset)
    if(kirim_kondisi.data == "ok")
    {
        // berhasil nambah
    }
    else
    {
        // error
    }
}

// menampilkan data semua aset
// METHOD : GET
async function ambilDataAset()
{
    var data_aset = await fetch.get("http://localhost:8000/api/aset")
    if(data_aset.data == "ok")
    {
        // berhasil mengambil data aset
        
    }
    else
    {
        // error
    }
}