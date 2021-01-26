<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>@yield('title')</title>
    <link href="{{ asset('assets/vendor/bootstrap4/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/css/master.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/vendor/chartsjs/Chart.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/vendor/flagiconcss3/css/flag-icon.min.css') }}" rel="stylesheet">
    <script src="{{ asset('assets/js/qrcode.min.js') }}"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.21/datatables.min.css"/>

</head>
<body>
  <div class="wrapper">
    <nav id="sidebar" class=>
      <div class="sidebar-header">
          <img src="{{ asset('assets/img/bootstraper-logo.png') }}" alt="bootraper logo" class="app-logo">
      </div>
      <ul class="list-unstyled components text-secondary">
        <li>
            <a href="{{ url('/beranda') }}"><i class="fas fa-home"></i> Beranda</a>
        </li>
        <li>
            <a href="{{ url('/users') }}"><i class="fas fa-user-friends"></i> Users</a>
        </li>
        <li>
            <a href="{{ url('/aset') }}"><i class="fas fa-layer-group"></i> Aset</a>
        </li>
        <li>
            <a href="{{ url('/kategori-aset') }}"><i class="fas fa-table"></i> Kategori Aset</a>
        </li>
        <li>
            <a href="{{ url('/lokasi') }}"><i class="fas fa-map-marker"></i> Lokasi</a>
        </li>
        <li>
            <a href="{{ url('/aset/qr') }}"><i class="fas fa-qrcode"></i> QR-Code</a>
        </li>
      </ul>
    </nav>
    <div id="body" class="active">
      <nav class="navbar navbar-expand-lg navbar-white bg-white">
          <button type="button" id="sidebarCollapse" class="btn btn-outline-secondary default-secondary-menu"><i class="fas fa-bars"></i><span></span></button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="nav navbar-nav ml-auto">
                  <li class="nav-item dropdown">
                      <div class="nav-dropdown">
                          <a href="" class="nav-item nav-link dropdown-toggle text-secondary" data-toggle="dropdown"><i class="fas fa-user"></i> <span>{{ session()->get('name') }}</span> <i style="font-size: .8em;" class="fas fa-caret-down"></i></a>
                          <div class="dropdown-menu dropdown-menu-right nav-link-menu">
                              <ul class="nav-list">
                                  <li><a href="{{ url('/logout') }}" class="dropdown-item"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
                              </ul>
                          </div>
                      </div>
                  </li>
              </ul>
          </div>
      </nav>
      <div class="content">
        <div class="container-fluid">
          @yield('content')
        </div>
      </div>
    </div>
    
  </div>
  <script src="{{ asset('assets/vendor/jquery3/jquery.min.js') }}"></script>
  <script src="{{ asset('assets/vendor/bootstrap4/js/bootstrap.bundle.min.js') }}"></script>
  <script src="{{ asset('assets/vendor/fontawesome5/js/solid.min.js') }}"></script>
  <script src="{{ asset('assets/vendor/fontawesome5/js/fontawesome.min.js') }}"></script>
  <script src="{{ asset('assets/vendor/chartsjs/Chart.min.js') }}"></script>
  <script src="{{ asset('assets/js/script.js') }}"></script>
  <script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.21/datatables.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

  @yield('script')

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