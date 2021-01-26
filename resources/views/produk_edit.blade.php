@extends('layout.admin')

@section('title', 'Edit Karyawan')

@section('content')
  <section class="content">
    <div class="card">
      <div class="card-header">	
        <h4>Edit Data Karyawan</h4>
      </div>
      <div class="card-body">
        
          <form method="post" action="{{ url('users/edit/'.$detail->id_user) }}">
            @csrf
            <input type="hidden" value="{{ $detail->id_user }}" name="id_user" />
            <div class="form-group">
            <label>Username</label>
            <p class="form-control">
                {{ $detail->username }}
            </p>
            </div>

            <div class="form-group">
            <label>Nama Karyawan</label>
            <input class="form-control" name="nama_user" value="{{ $detail->nama_user }}" required />
            </div>

            <div class="form-group">
            <label>Password (Kosongkan jika tidak ingin mengganti password)</label>
            <input class="form-control" name="password" type="password" />
            </div>

            <div class="form-group">
            <label>Level</label>
            <select class="form-control" name="level">
              <option value="owner">Owner</option>
              <option value="admin">Admin</option>
              <option value="user">User</option>
            </select>
            </div>

            <div class="form-group">
            <label>Inisial</label>
            <input class="form-control" name="inisial" value="{{ $detail->inisial }}" required />
            </div>

            <div class="form-group">
            <label>Status Karyawan</label>
            <select class="form-control" name="status">
              <option value="1">Aktif</option>
              <option value="0">Tidak Aktif</option>
            </select>
            </div>

            <div class="form-group">
            <button type="submit" class="btn btn-primary">Simpan</button>
            <button type="button" onclick="window.history.back();" class="btn btn-success">Kembali</button>
            </div>
          </form>
      </div>
    </div>
  </section>
  <script>
    document.getElementsByName("status")[0].value = "{{ $detail->status }}";
    document.getElementsByName("level")[0].value = "{{ $detail->level }}";
  </script>
@endsection
