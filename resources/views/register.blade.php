<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Login | Asset Management</title>

    <link href="{{ asset('assets/vendor/bootstrap4/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/vendor/bootstrap4/css/yandri.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/css/auth.css') }}" rel="stylesheet">
    
</head>
<body>
    <div class="wrapper">
        <div class="auth-content">
            <div class="card">
                <div class="card-body text-center">
                    <div class="mb-4">
                        <h3 class="text-center">YPI Raudhatul Jannah</h3>
                    </div>
                    <h6 class="mb-4 text-muted">Form Register</h6>
                   
                    <form action="" method="POST" enctype="multipart/form-data">
                    {{csrf_field()}}
                        <div class="form-group">
                            <input type="nisn" name="nisn" class="form-control" placeholder="NISN" required>
                        </div>
                        <div class="form-group">
                            <input type="nama" name="nama" class="form-control" placeholder="NAMA" required>
                        </div>
                        <div class="form-group">
                            <input type="email" name="email" class="form-control" placeholder="Email" required>
                        </div>
                        <div class="form-group">
                            <input type="nohp" name="nohp" class="form-control" placeholder="NO HP" required>
                        </div>
                        <!-- <div class="form-group">
                            <input type="password" name="password" class="form-control" placeholder="Password" required>
                        </div> -->
                        
                        <div class="form-group">
                        <label for="exampleFormControlTextarea1">Bukti Pendaftaran : </label>
                            <input type="file" name="image" required>
                        </div>
                        
                        
                        <button class="yandri"  >Register</button>
                    </form>
                    <a href="{{ url('/') }}" class="bungkus"  >login</a>
                   
                  
                </div>
              
            </div>
        </div>
    </div>
    
    <script src="{{ asset('assets/vendor/jquery3/jquery.min.js') }}"></script>
    <script src="{{ asset('assets/vendor/bootstrap4/js/bootstrap.min.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

    @if(session()->has('alert.type'))
        <script>
        Swal.fire(
            'Pesan',
            '{{ session()->get('alert.text') }}',
            '{{ session()->get('alert.type') }}'
        )
        </script>
    @endif
</body>
</html>