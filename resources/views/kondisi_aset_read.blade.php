@extends('layout.admin')

@section('title', 'Data Kategori Aset')

@section('content')
  <section class="content">
    <div class="card">
      <div class="card-header">
        <div style="float: left;">
          <h4>Data Kondisi Aset</h4>
          <h4>{{ $data_aset->kode_aset }} - {{ $data_aset->nama_aset }}</h4>
        </div>
        <div style="float: right;">
          <a href="{{ url('aset')}}" class="btn btn-success"><i class='icon icon-white icon-plus'></i> Kembali</a>
          <a href="<?php echo url('aset/'.$id_aset.'/kondisi-aset/tambah'); ?>" class="btn btn-primary"><i class='icon icon-white icon-plus'></i> Tambah Kondisi Aset</a>
        </div>
        <div style="clear: both"></div>
      </div>
      <div class="card-body">
        <div class="table-responsive">
          <table id="tabel_kondisi_aset" class="table table-striped table-bordered table-hover">
            <thead>
              <tr>
                <th width="10">No</th>
                <th>Kondisi</th>
				<th>Tanggal Kondisi</th>
				<th>Deskripsi</th>
				<th>Gambar</th>
				<th width="80" class="text-center">Aksi</th>
              </tr>
            </thead>
            
          </table>
        </div>
      </div>
    </div>
  </section>
@endsection

@section('script')
  <script>
  // Halaman kelola karyawan
    $('#tabel_kondisi_aset').DataTable( {
        processing: true,
        serverSide: true,
        ajax: '<?php echo url("api/datatable/kondisi-aset/".$id_aset); ?>',
        serverMethod: "post",
        order: [[1, 'asc']],
        columns: [
            {
              data: null,
              render: function( data, type, row, meta ){
                    return meta.row + meta.settings._iDisplayStart + 1;
                },
                searchable: false
            },
            {
              data: "kondisi", orderable: true, searchable: true
            },
			{
              data: "tanggal_kondisi", orderable: true, searchable: true
            },
			{
              data: "deskripsi", orderable: true, searchable: true
            },
            {
              data: null,
              render: function( data, type, row, meta ){
                  return  "<img src='<?=url("images")?>/" + data.gambar + "' width='75' height='75' />";
                },
                searchable: false
            },
            {
              data: null,
              render: function( data, type, row, meta ){
                  return  "<div class='btn-group'>" +
                          "<a href='{{ url('aset/" + data.id_aset +"/kondisi-aset/hapus') }}/" + data.id +"' class='btn btn-sm btn-danger' name='tombol_hapus' onclick='return confirm(\"Apakah Anda ingin menghapus data ini?. \")' title='Hapus Data'><i class='fas fa-trash'></i> Hapus</a></div>";
                },
                searchable: false
            }
        ]
    }
    );
  </script>
@endsection
