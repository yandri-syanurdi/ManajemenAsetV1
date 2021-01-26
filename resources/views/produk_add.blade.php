@extends('layout.admin')

@section('title', 'Edit Karyawan')

@section('content')
  <section class="content">
    <div class="card">
      <div class="card-header">	
        <h4>Tambah Data Karyawan</h4>
      </div>
      <div class="card-body">
        
          <form method="post">
            @csrf
            <div class="form-group">
            <label>Username</label>
            <input class="form-control" name="username" required />
            </div>

            <div class="form-group">
            <label>Nama Karyawan</label>
            <input class="form-control" name="nama_user" />
            </div>

            <div class="form-group">
            <label>Password</label>
            <input type="password" class="form-control" name="password" />
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
            <input class="form-control" name="inisial" required />
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
@endsection
