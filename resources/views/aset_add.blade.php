@extends('layout.admin')

@section('title', 'Edit Aset')

@section('content')
  <section class="content">
    <div class="card">
      <div class="card-header">	
        <h4>Tambah Data Aset</h4>
      </div>
      <div class="card-body">
        
          <form method="post">
            @csrf

			<div class="form-group">
            <label>Nama Aset</label>
            <input class="form-control" name="nama_aset" required />
            </div>


            	<!-- <div class="form-group">
            <label>Yandri</label>
            <input class="form-control" name="yandriku" required />
            </div> -->

          
            <div class="form-group">
            <label>Lokasi</label>
            <select name="id_lokasi" class="form-control" required>
              <option selected disabled>-- Pilih Lokasi --</option>
              <?php
                foreach($lokasi_aset as $lokasi)
                {
              ?>
                  <option value="<?php echo $lokasi->id; ?>"><?php echo $lokasi->nama_lokasi; ?></option>
              <?php
                }
              ?>
            </select>
            </div>


			<div class="form-group">
            <label>Deskripsi</label>
            <input class="form-control" name="deskripsi" required />
            </div>

			<div class="form-group">
            <label>Kategori</label>
            <select name="id_kategori" class="form-control" required>
              <option selected disabled>-- Pilih Kategori --</option>
              <?php
                foreach($kategori_aset as $kategori)
                {
              ?>
                  <option value="<?php echo $kategori->id; ?>"><?php echo $kategori->nama_kategori; ?></option>
              <?php
                }
              ?>
            </select>
            </div>

             <div class="form-group">
            <label>Kode Meja</label>
            <select name="kode_meja" class="form-control" required>
            <option selected disabled>-- Pilih Kode Meja --</option>
              <?php
                  for ($i=1; $i<=100; $i++)
                  {
                      ?>
                          <option value="<?php echo $i;?>"><?php echo $i;?></option>
                      <?php
                  }
              ?>
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
