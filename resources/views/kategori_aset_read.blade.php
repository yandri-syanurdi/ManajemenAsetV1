@extends('layout.admin')

@section('title', 'Data Kategori Aset')

@section('content')
  <section class="content">
    <div class="card">
      <div class="card-header">
        <div style="float: left;">
          <h4>Data Kategori Aset</h4>
        </div>
        <div style="float: right;">
          <a href="{{ url('kategori-aset/tambah')}}" class="btn btn-primary"><i class='icon icon-white icon-plus'></i> Tambah Kategori Aset</a>
        </div>
        <div style="clear: both"></div>
      </div>
      <div class="card-body">
        <div class="table-responsive">
          <table id="tabel_kategori_aset" class="table table-striped table-bordered table-hover">
            <thead>
              <tr>
                <th width="10">No</th>
                <th>Kode Kategori Aset</th>
                <th>Nama Kategori Aset</th>
                <th>Kode Barang</th>
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
    $('#tabel_kategori_aset').DataTable( {
        processing: true,
        serverSide: true,
        ajax: "api/datatable/kategori-aset",
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
              data: "kode_kategori", orderable: true, searchable: true
            },
            {
              data: "nama_kategori", orderable: true, searchable: true
            },
            {
              data: "kode_barang", orderable: true, searchable: true
            },
            {
              data: null,
              render: function( data, type, row, meta ){
                  return  "<div class='btn-group'>" +
                          "<a href='{{ url('kategori-aset/edit') }}/" + data.id +"' class='btn btn-sm btn-info' title='Edit Data'><i class='fas fa-pencil-alt'></i> Edit</a>" +
                          "</div> &nbsp;" +
                          "<div class='btn-group'>" +
                          "<a href='{{ url('kategori-aset/hapus') }}/" + data.id +"' class='btn btn-sm btn-danger' name='tombol_hapus' onclick='return confirm(\"Apakah Anda ingin menghapus data ini?. \")' title='Hapus Data'><i class='fas fa-trash'></i> Hapus</a></div>";
                },
                searchable: false
            }
        ]
    }
    );
  </script>
@endsection
