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
                    <h6 class="mb-4 text-muted">Form Login</h6>
                   
                    <form action="" method="POST">
                        @csrf
                        <div class="form-group">
                            <input type="email" name="email" class="form-control" placeholder="Email" required>
                        </div>
                        <div class="form-group">
                            <input type="password" name="password" class="form-control" placeholder="Password" required>
                        </div>
                        <h6>lupa password</h6>
                        <button class="yandri"  >Login</button>
                       
                    </form>
                    <a href="{{ url('/register') }}" class="bungkus"  >Register</a>
                    <br>
                    <br>
                    <img src="{{url('assets/qrku.jpg')}}" height="100px;" width="100px;">
                    <br />
                    <br>
                    <h6 class="atas">Cek Verifikasi Pembayaran</h6>
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