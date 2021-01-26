@extends('layout.admin')

@section('title', 'Data Lokasi')

@section('content')
  <section class="content">
    <div class="card">
      <div class="card-header">
        <div style="float: left;">
          <h4>Data Lokasi</h4>
        </div>
        <div style="float: right;">
          <a href="{{ url('lokasi/tambah')}}" class="btn btn-primary"><i class='icon icon-white icon-plus'></i> Tambah Lokasi</a>
        </div>
        <div style="clear: both"></div>
      </div>
      <div class="card-body">
        <div class="table-responsive">
          <table id="tabel_kategori_aset" class="table table-striped table-bordered table-hover">
            <thead>
              <tr>
                <th width="10">No</th>
                <th>Nama Lokasi</th>
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
        ajax: "api/datatable/lokasi",
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
              data: "nama_lokasi", orderable: true, searchable: true
            },
            {
              data: null,
              render: function( data, type, row, meta ){
                  return  "<div class='btn-group'>" +
                          "<a href='{{ url('lokasi/edit') }}/" + data.id +"' class='btn btn-sm btn-info' title='Edit Data'><i class='fas fa-pencil-alt'></i> Edit</a>" +
                          "</div> &nbsp;" +
                          "<div class='btn-group'>" +
                          "<a href='{{ url('lokasi/hapus') }}/" + data.id +"' class='btn btn-sm btn-danger' name='tombol_hapus' onclick='return confirm(\"Apakah Anda ingin menghapus data ini?. \")' title='Hapus Data'><i class='fas fa-trash'></i> Hapus</a></div>";
                },
                searchable: false
            }
        ]
    }
    );
  </script>
@endsection
