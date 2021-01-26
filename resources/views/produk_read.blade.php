@extends('layout.admin')

@section('title', 'Data Produk')

@section('content')
  <section class="content">
    <div class="card">
      <div class="card-header">
        <div style="float: left;">
          <h4>Data Produk</h4>
        </div>
        <div style="float: right;">
          <a href="{{ url('produk/tambah')}}" class="btn btn-primary"><i class='icon icon-white icon-plus'></i> Tambah Produk Baru</a>
        </div>
        <div style="clear: both"></div>
      </div>
      <div class="card-body">
        <div class="table-responsive">
          <table id="tabel_produk" class="table table-striped table-bordered table-hover">
            <thead>
              <tr>
                <th width="10">No</th>
                <th>Nama Produk</th>
                <th>Stok</th>
                <th>Harga Jual</th>
                <th>Harga Beli</th>
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
    $('#tabel_produk').DataTable( {
        processing: true,
        serverSide: true,
        ajax: "api/produk",
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
              data: "nm_produk", orderable: true, searchable: true
            },
            {
              data: "stok", orderable: true, searchable: false
            },
            {
              data: "harga_jual", orderable: true, searchable: false
            },
            {
              data: "harga_beli", orderable: true, searchable: false
            },
            {
              data: null,
              render: function( data, type, row, meta ){
                  return  "<div class='btn-group'>" +
                          "<a href='{{ url('produk/edit') }}/" + data.id_user +"' class='btn btn-sm btn-info' title='Edit Data'><i class='fas fa-pencil-alt'></i> Edit</a>" +
                          "</div> &nbsp;" +
                          "<div class='btn-group'>" +
                          "<a href=' class='btn btn-sm btn-danger' name='tombol_hapus' onclick='return confirm(\"Apakah Anda yakin ingin menghapus data ini? \")' title='Hapus Data'><i class='fa fa-trash'></i> Hapus</a></div>";
                },
                searchable: false
            }
        ]
    }
    );
  </script>
@endsection
