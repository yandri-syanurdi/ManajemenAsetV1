@extends('layout.admin')

@section('title', 'Edit User')

@section('content')
  <section class="content">
    <div class="card">
      <div class="card-header">	
        <h4>Edit Data User</h4>
      </div>
      <div class="card-body">
        
          <form method="post" action="{{ url('users/edit/'.$detail->id) }}">
            @csrf
            
            <div class="form-group">
            <label>Nama</label>
            <input class="form-control" name="name" value="{{ $detail->name }}" required />
            </div>

            <div class="form-group">
            <label>Email</label>
            <input class="form-control" name="email" value="{{ $detail->email }}" required />
            </div>

			<div class="form-group">
            <label>
              Password <br>
              <small>*Masukan password baru jika ingin mengganti password</small>
            </label>
            <input class="form-control" name="password" type="password" required />
            </div>

            <div class="form-group">
            <label>Jenis Kelamin</label>
            <select class="form-control" name="jenis_kelamin" required>
              <option value="Laki-Laki">Laki-Laki</option>
              <option value="Perempuan">Perempuan</option>
            </select>
            <script>
              document.getElementsByName("jenis_kelamin")[0].value = "{{ $detail->jenis_kelamin }}";
            </script>
            </div>
      <div class="form-group">
            <label>Nohp</label>
            <input class="form-control" name="nohp" type="text" value="{{ $detail->nohp }}" required />
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
