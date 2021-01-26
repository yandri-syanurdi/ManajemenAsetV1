@extends('layout.admin')

@section('title', 'Asset Managemen')

@section('content')

<div class="row">
  <div class="col-12 text-center">
    <h3>Ringkasan Total Kondisi Aset</h3>
  </div>
  <div class="col-xs-12 col-sm-3">
    <div class="card">
        <div class="content">
            <div class="row">
                <div class="dfd text-center">
                    <i class="blue large-icon mb-2 fas fa-box" style="color: #175788;"></i>
                    <h4 class="mb-0">{{ $kondisi_good }}</h4>
                    <p class="text-muted">Good</p>
                </div>
            </div>
        </div>
    </div>
  </div>
  <div class="col-sm-3 col-xs-12">
    <div class="card">
        <div class="content">
            <div class="row">
                <div class="dfd text-center">
                    <i class="purple large-icon mb-2 fas fa-box" style="color: purple;"></i>
                    <h4 class="mb-0">{{ $kondisi_bad }}</h4>
                    <p class="text-muted">Bad</p>
                </div>
            </div>
        </div>
    </div>
  </div>
  <div class="col-sm-3 col-xs-12">
    <div class="card">
        <div class="content">
            <div class="row">
                <div class="dfd text-center">
                    <i class="yellow large-icon mb-2 fas fa-box" style="color: #7b7b00;"></i>
                    <h4 class="mb-0">{{ $kondisi_lost }}</h4>
                    <p class="text-muted">Lost</p>
                </div>
            </div>
        </div>
    </div>
  </div>
  <div class="col-sm-3 col-xs-12">
    <div class="card">
        <div class="content">
            <div class="row">
                <div class="dfd text-center">
                    <i class="red large-icon mb-2 fas fa-box" style="color: #a70000;"></i>
                    <h4 class="mb-0">{{ $kondisi_damaged }}</h4>
                    <p class="text-muted">Damaged</p>
                </div>
            </div>
        </div>
    </div>
  </div>
  <div class="col-12">
    <h3>Daftar Lokasi Aset</h3>
    <table class="table table-stripped">
        <tr>
            <th>No</th>
            <th>Nama Lokasi</th>
            <th>Jumlah Aset</th>
        </tr>
        <?php
            foreach($lokasi_aset as $no => $lokasi)
            {
        ?>
                <tr>
                    <td><?php echo $no+1; ?></td>
                    <td><?php echo $lokasi->nama_lokasi; ?></td>
                    <td><?php echo $lokasi->jumlah_aset; ?></td>
                </tr>  
        <?php
            }
        ?>
    </table>
  </div>
</div>
@endsection


