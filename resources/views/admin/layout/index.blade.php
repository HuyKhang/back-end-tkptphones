<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>RoyalUI Admin</title>
  <base href="{{asset('')}}">
  <!-- plugins:css -->
  <link rel="stylesheet" href="admin_asset/vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="admin_asset/vendors/base/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="admin_asset/css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="admin_asset/images/favicon.png" />
</head>
<body>
  <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo mr-5" href="index.html"><img src="admin_asset/images/logo.svg" class="mr-2" alt="logo"/></a>
        <a class="navbar-brand brand-logo-mini" href="index.html"><img src="admin_asset/images/logo-mini.svg" alt="logo"/></a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
          <span class="ti-view-list"></span>
        </button>
        <ul class="navbar-nav mr-lg-2">
          <li class="nav-item nav-search d-none d-lg-block">
            <div class="input-group">
              <div class="input-group-prepend hover-cursor" id="navbar-search-icon">
                <span class="input-group-text" id="search">
                  <i class="ti-search"></i>
                </span>
              </div>
              <input type="text" class="form-control" id="navbar-search-input" placeholder="Search now" aria-label="search" aria-describedby="search">
            </div>
          </li>
        </ul>
        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item dropdown mr-1">
            <a class="nav-link count-indicator dropdown-toggle d-flex justify-content-center align-items-center" id="messageDropdown" href="#" data-toggle="dropdown">
              <i class="ti-email mx-0"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="messageDropdown">
              <p class="mb-0 font-weight-normal float-left dropdown-header">Messages</p>
              <a class="dropdown-item">
                <div class="item-thumbnail">
                    <img src="images/faces/face4.jpg" alt="image" class="profile-pic">
                </div>
                <div class="item-content flex-grow">
                  <h6 class="ellipsis font-weight-normal">David Grey
                  </h6>
                  <p class="font-weight-light small-text text-muted mb-0">
                    The meeting is cancelled
                  </p>
                </div>
              </a>
              <a class="dropdown-item">
                <div class="item-thumbnail">
                    <img src="images/faces/face2.jpg" alt="image" class="profile-pic">
                </div>
                <div class="item-content flex-grow">
                  <h6 class="ellipsis font-weight-normal">Tim Cook
                  </h6>
                  <p class="font-weight-light small-text text-muted mb-0">
                    New product launch
                  </p>
                </div>
              </a>
              <a class="dropdown-item">
                <div class="item-thumbnail">
                    <img src="images/faces/face3.jpg" alt="image" class="profile-pic">
                </div>
                <div class="item-content flex-grow">
                  <h6 class="ellipsis font-weight-normal"> Johnson
                  </h6>
                  <p class="font-weight-light small-text text-muted mb-0">
                    Upcoming board meeting
                  </p>
                </div>
              </a>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">
              <i class="ti-bell mx-0"></i>
              <span class="count"></span>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="notificationDropdown">
              <p class="mb-0 font-weight-normal float-left dropdown-header">Notifications</p>
              <a class="dropdown-item">
                <div class="item-thumbnail">
                  <div class="item-icon bg-success">
                    <i class="ti-info-alt mx-0"></i>
                  </div>
                </div>
                <div class="item-content">
                  <h6 class="font-weight-normal">Application Error</h6>
                  <p class="font-weight-light small-text mb-0 text-muted">
                    Just now
                  </p>
                </div>
              </a>
              <a class="dropdown-item">
                <div class="item-thumbnail">
                  <div class="item-icon bg-warning">
                    <i class="ti-settings mx-0"></i>
                  </div>
                </div>
                <div class="item-content">
                  <h6 class="font-weight-normal">Settings</h6>
                  <p class="font-weight-light small-text mb-0 text-muted">
                    Private message
                  </p>
                </div>
              </a>
              <a class="dropdown-item">
                <div class="item-thumbnail">
                  <div class="item-icon bg-info">
                    <i class="ti-user mx-0"></i>
                  </div>
                </div>
                <div class="item-content">
                  <h6 class="font-weight-normal">New user registration</h6>
                  <p class="font-weight-light small-text mb-0 text-muted">
                    2 days ago
                  </p>
                </div>
              </a>
            </div>
          </li>
          @if(Auth::check())
          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
              <img src="upload/user/{{Auth::user()->image}}" alt="profile"/>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item" href="admin/user/sua/{{Auth::user()->id}}"><i class="ti-settings text-primary"></i>Settings</a>
              <a class="dropdown-item" href="admin/logout"><i class="ti-power-off text-primary"></i>Logout</a>
            </div>
          </li>
          @endif
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="ti-view-list"></span>
        </button>
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          @if(Auth::user()->position==1)
          <li class="nav-item">
            <a class="nav-link" href="index.html">
              <i class="ti-shield menu-icon"></i>
              <span class="menu-title">Dashboard</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="admin/type_produce/danhsach">
              <i class="ti-menu-alt menu-icon"></i>
              <span class="menu-title">Loại sản phẩm</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="admin/manufacturer/danhsach">
              <i class="ti-menu-alt menu-icon"></i>
              <span class="menu-title">Nhà sản xuất</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="admin/user/danhsach">
              <i class="ti-user menu-icon"></i>
              <span class="menu-title">Quản lí nhân viên</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="admin/customer/danhsach">
              <i class="ti-user menu-icon"></i>
              <span class="menu-title">Quản lí khách hàng</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="admin/produce/danhsach">
              <i class="ti-mobile menu-icon"></i>
              <span class="menu-title">Quản lí sản phẩm</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="admin/bills/danhsach">
              <i class="ti-receipt menu-icon"></i>
              <span class="menu-title">Quản lí hóa đơn</span>
            </a>
          </li>

          @elseif(Auth::user()->position==0)
          <li class="nav-item">
            <a class="nav-link" href="index.html">
              <i class="ti-shield menu-icon"></i>
              <span class="menu-title">Dashboard</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="admin/type_produce/danhsach">
              <i class="ti-menu-alt menu-icon"></i>
              <span class="menu-title">Loại sản phẩm</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="admin/manufacturer/danhsach">
              <i class="ti-menu-alt menu-icon"></i>
              <span class="menu-title">Nhà sản xuất</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="admin/produce/danhsach">
              <i class="ti-mobile menu-icon"></i>
              <span class="menu-title">Quản lí sản phẩm</span>
            </a>
          </li><li class="nav-item">
            <a class="nav-link" href="admin/customer/danhsach">
              <i class="ti-user menu-icon"></i>
              <span class="menu-title">Quản lí khách hàng</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="admin/bills/danhsach">
              <i class="ti-receipt menu-icon"></i>
              <span class="menu-title">Quản lí hóa đơn</span>
            </a>
          </li>
          @endif
        </ul>
      </nav>
      <!-- partial -->
      <div class="main-panel">
        @yield('content')
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
        <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2018 <a href="https://www.templatewatch.com/" target="_blank">Templatewatch</a>. All rights reserved.</span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="ti-heart text-danger ml-1"></i></span>
          </div>
        </footer>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- plugins:js -->
  <script src="admin_asset/vendors/base/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <script src="admin_asset/vendors/chart.js/Chart.min.js"></script>
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="admin_asset/js/off-canvas.js"></script>
  <script src="admin_asset/js/hoverable-collapse.js"></script>
  <script src="admin_asset/js/template.js"></script>
  <script src="admin_asset/js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="admin_asset/js/dashboard.js"></script>
  <!-- End custom js for this page-->
  @yield('script')
</body>

</html>

