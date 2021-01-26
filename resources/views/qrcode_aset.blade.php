@extends('layout.admin')

@section('title', 'Data Aset')

@section('content')
  <section class="content">
    <div class="card">
      <div class="card-header">
        <div style="float: left;">
          <h4>QR Code Aset</h4>
        </div>
        <div style="clear: both"></div>
      </div>
      <div class="card-body">
        <div class="table-responsive">

        				@if ($message = Session::get('sukses'))
				<div class="alert alert-warning alert-block">
					<button type="button" class="close" data-dismiss="alert">×</button> 
					<strong>{{ $message }}</strong>
				</div>
				@endif

          <form action="{{ url('aset/cetak-qr') }}" method="POST">
            @csrf
            <button type="button" id="btn_centang_semua" class="btn btn-sm btn-primary"><i class="fa fa-check"></i> Pilih Semua</button>
            <button type="submit" class="btn btn-sm btn-success"><i class="fa fa-print"></i> Cetak QR Code</button>
          <table id="tabel_aset" class="table table-striped table-bordered table-hover">
            <thead>
              <tr>
                <th width="10">Pilih</th>
                <th width="10">No</th>
                <th>Kode Aset</th>
				<th>Nama Aset</th>
				<th>Lokasi</th>
				<th>Kategori</th>
				<th width="200" class="text-center">QR Code</th>
              </tr>
            </thead>
            
          </table>
          </form>
        </div>
      </div>
    </div>
  </section>
@endsection

@section('script')
  <script>

    

  // Halaman kelola karyawan
    $('#tabel_aset').DataTable( {
        processing: true,
        serverSide: true,
        ajax: "{{ url('api/datatable/aset') }}",
        serverMethod: "post",
        order: [[2, 'asc']],
        columns: [
          {
              data: null,
              render: function( data, type, row, meta ){
                return "<input name='id_aset[]' type='checkbox' value='" + data.id + "' />";
              },
                searchable: false
            },
            {
              data: null,
              render: function( data, type, row, meta ){
                    return meta.row + meta.settings._iDisplayStart + 1;
                },
                searchable: false
            },
            {
                data: "kode_aset", orderable: true, searchable: true
            },
			{
              data: "nama_aset", orderable: true, searchable: true
            },
			{
              data: "lokasi.nama_lokasi", orderable: true, searchable: true
            },
			{
              data: "kategori.nama_kategori", orderable: true, searchable: true
            },
            {
              data: null,
              render: function( data, type, row, meta ){
                  var kode_aset = data.kode_aset;
                  var html_kode_aset = " <div id='qrcode_aset_" + data.id + "'></div>";
                  html_kode_aset += "<script>";
                  html_kode_aset += "new QRCode(document.getElementById('qrcode_aset_" + data.id +"'), {text: '" + data.kode_aset + "', width: 128, height: 128});";
                  html_kode_aset += "<\/script>";
				          return html_kode_aset;
                },
                searchable: false
            }
        ]
    }
    );

    var klik = false;
    document.getElementById("btn_centang_semua").addEventListener("click", function(){
      var tabel_aset = document.getElementsByName("id_aset[]");
      for(var x = 0; x < tabel_aset.length; x++)
      {
        document.getElementsByName("id_aset[]")[x].checked = !klik;
      }
      klik = !klik;
    })
  </script>
@endsection
