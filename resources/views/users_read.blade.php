@extends('layout.admin')

@section('title', 'Data User')

@section('content')
    <div class="card">
      <div class="card-header">
        <div style="float: left;">
          <h4>Data User</h4>
        </div>
        <div style="float: right;">
          <a href="{{ url('users/tambah')}}" class="btn btn-primary"><i class='icon icon-white icon-plus'></i> Tambah User Baru</a>
        </div>
        <div style="clear: both"></div>
      </div>
      <div class="card-body">
        <div class="table-responsive">
          <table id="tabel_karyawan" class="table table-striped table-hover">
            <thead>
              <tr>
                <th width="10">No</th>
                <th>Nama</th>
                <th>Email</th>
                <th>Jenis Kelamin</th>
                <th>Nohp</th>
                <th width="80" class="text-center">Aksi</th>
              </tr>
            </thead>
            <tbody></tbody>
          </table>
        </div>
      </div>
    </div>
@endsection

@section('script')
  <script>
  // Halaman kelola karyawan
    $('#tabel_karyawan').DataTable( {
        processing: true,
        serverSide: true,
        ajax: "api/datatable/users",
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
              data: "name", orderable: true, searchable: true
            },
            {
              data: "email", orderable: true, searchable: true
            },
            {
              data: "jenis_kelamin", orderable: false, searchable: true
            },
            {
              data: "nohp", orderable: false, searchable: true
            },
            {
              data: null,
              render: function( data, type, row, meta ){
                  return  "<div class='btn-group'>" +
                          "<a href='{{ url('users/edit') }}/" + data.id +"' class='btn btn-sm btn-info' title='Edit Data'><i class='fas fa-pencil-alt'></i> Edit</a>" +
                          "</div> &nbsp;" +
                          "<div class='btn-group'>" +
                          "<a href='{{ url('users/hapus') }}/" + data.id +"' class='btn btn-sm btn-danger' name='tombol_hapus' onclick='return confirm(\"Apakah Anda yakin ingin menghapus data ini? Semua data transaksi yang terkait dengan user ini akan DIHAPUS. \")' title='Hapus Data'><i class='fas fa-trash'></i> Hapus</a></div>";
                },
                searchable: false
            }
        ]
    }
    );
    // komentar
  </script>
@endsection
