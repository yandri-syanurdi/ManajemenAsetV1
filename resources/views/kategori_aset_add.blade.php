@extends('layout.admin')

@section('title', 'Edit Kategori Aset')

@section('content')
  <section class="content">
    <div class="card">
      <div class="card-header">	
        <h4>Tambah Data Kategori Aset</h4>
      </div>
      <div class="card-body">
        
          <form method="post">
            @csrf
            <div class="form-group">
            <label>Kode Kategori Aset</label>
            <input class="form-control" name="kode_kategori" required />
            </div>
            <div class="form-group">
            <label>Nama Kategori Aset</label>
            <input class="form-control" name="nama_kategori" required />
            </div>

            <div class="form-group">
            <label>Kode Barang</label>
            <input class="form-control" name="kode_barang" required />
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
