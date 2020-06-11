<%@page import="com.gunzip.mandooweb.ApiExplorer"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URL"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Mandoo | 실시간 위험지수</title>
  	<!-- ajax -->
  <!-- T-맵 -->
  <script
src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://apis.openapi.sk.com/tmap/jsv2?version=1&appKey=l7xxc04b74e7bc0940dabf45e6cbfcd31748"></script>
  <script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/data.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>
	<script src="https://code.highcharts.com/modules/export-data.js"></script>
	<script src="https://code.highcharts.com/modules/accessibility.js"></script>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/gunzip_final/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="/gunzip_final/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="/gunzip_final/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="/gunzip_final/plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/gunzip_final/dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="/gunzip_final/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="/gunzip_final/plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="/gunzip_final/plugins/summernote/summernote-bs4.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Messages Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-comments"></i>
          <span class="badge badge-danger navbar-badge">3</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="/gunzip_final/dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  	이정윤
                  <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">조장입니다..</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 31 Years Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="/gunzip_final/dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  John Pierce
                  <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">I got your message bro</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="/gunzip_final/dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Nora Silvester
                  <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">The subject goes here</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
        </div>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->
  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="/gunzip_final/index3.do" class="brand-link">
      <img src="/gunzip_final/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">군만두</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="/gunzip_final/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">만두집 군집주행 관제</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/gunzip_final/index.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>군집주행 실시간 현황</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/gunzip_final/index2.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>교통사고 데이터 분석</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/gunzip_final/index3.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>통계 데이터</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/gunzip_final/index6.do" class="nav-link active">
                  <i class="far fa-circle nav-icon"></i>
                  <p>위험 지수</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/gunzip_final/index4.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>MongoDB Server Log</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/gunzip_final/index5.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>MongoDB Car Log</p>
                </a>
              </li>
            </ul>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">위험지수</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/gunzip_final/index.do">Home</a></li>
              <li class="breadcrumb-item active">위험지수</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
        <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
              <h3>요일</h3>
                <h3>
               	<select id="dayselect"name="age" >
					<option value="none">=== 선택 ===</option>
				    <option value="0">월요일</option>
				    <option value="1">화요일</option>
				    <option value="2">수요일</option>
				    <option value="3">목요일</option>
				    <option value="4">금요일</option>
				    <option value="5">토요일</option>
				    <option value="6">일요일</option>
				</select>
				</h3>
              </div>
              <div class="icon">
                <i class="ion ion-android-bus"></i>
              </div>
 
            </div>
          </div>
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
              <h3>연령</h3>
                <h3>
               	<select id="ageselect" name="age" >
					<option value="none">=== 선택 ===</option>
				    <option value="0">10대</option>
				    <option value="1">20대</option>
				    <option value="2">30대</option>
				    <option value="3">40대</option>
				    <option value="4">50대</option>
				    <option value="5">60대</option>
				    <option value="6">70대</option>
				    <option value="7">80대</option>
				    <option value="8">90대</option>
				</select>
				</h3>
              </div>
              <div class="icon">
                <i class="ion ion-android-bus"></i>
              </div>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
              <h3>날씨</h3>
              	<h3>
               	<select id="weatherselect" name="language" >
					<option value="none">=== 선택 ===</option>
				    <option value="0">맑음</option>
				    <option value="1">흐림</option>
				    <option value="2">비</option>
				    <option value="3">안개</option>
				    <option value="4">눈</option>
				    <option value="5">기타</option>
				</select>
				</h3>
              </div>
              <div class="icon">
                <i style="font-color: blue" class="ion ion-stats-bars"></i>
              </div>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
              <h3>시간대</h3>
                <h3>
               	<select id="timeselect" name="age" >
					<option value="none">=== 선택 ===</option>
				    <option value="0">00~03시</option>
				    <option value="1">03~06시</option>
				    <option value="2">06~09시</option>
				    <option value="3">09~12시</option>
				    <option value="4">12~15시</option>
				    <option value="5">15~18시</option>
				    <option value="6">18~21시</option>
				    <option value="7">21~24시</option>
				</select>
				</h3>
              </div>
              <div class="icon">
                <i class="ion ion-android-bus"></i>
              </div>
 
            </div>
          </div>
          <!-- ./col -->
        </div>
        <!-- /.row -->
        <!-- Main row -->
        <div class="row">
          <!-- Left col -->
          <section class="col-lg-12 connectedSortable">
            <!-- Custom tabs (Charts with tabs)-->
            <!-- solid sales graph -->
            <div class="card bg-gradient-info">
              <div class="card-header border-0">
                <h3 class="card-title">
                  <i class="fas fa-th mr-1"></i>
                  	위치기반 교통사고위험지수
                </h3>
              </div>
              <div class="card-body" style="height:500px">
              	<figure class="highcharts-figure" style="min-height: 200px; height: 200px; max-height: 200px; max-width: 100%;">
				    <div id="container"></div>
				    
				</figure>
              	
              </div>
             
              <!-- /.card-body -->
              <div class="card-footer bg-transparent">
                <div class="row">
                </div>
                <!-- /.row -->
              </div>
              <!-- /.card-footer -->
            </div>
            <!-- /.card -->

            <!-- /.card -->
          </section>
          <!-- /.Left col -->
        </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  
  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="/gunzip_final/plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="/gunzip_final/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="/gunzip_final/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="/gunzip_final/plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="/gunzip_final/plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="/gunzip_final/plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="/gunzip_final/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="/gunzip_final/plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="/gunzip_final/plugins/moment/moment.min.js"></script>
<script src="/gunzip_final/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="/gunzip_final/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="/gunzip_final/plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="/gunzip_final/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="/gunzip_final/dist/js/adminlte.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="/gunzip_final/dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/gunzip_final/dist/js/demo.js"></script>
<script type="text/javascript">
var day;
var age;
var weather;
var time;

var d = document.getElementById('dayselect');
d.addEventListener('change', function(event){
	day = event.target.value;
});

var a = document.getElementById('ageselect');
a.addEventListener('change', function(event){
	age = event.target.value;
});

var w = document.getElementById('weatherselect');
w.addEventListener('change', function(event){
	weather = event.target.value;
});

var t = document.getElementById('timeselect');
t.addEventListener('change', function(event){
	time = event.target.value;
	//alert(day);
	//alert(age);
	//alert(weather);
	//alert(time);
	flask();
});

function flask(){
	$.ajax ({
		url : "/gunzip_final/index6_get.do?day="+day+"&age="+age+"&weather="+weather+"&time="+time,
		cache : false,
		success : function (res){
			var myvar = '<div class="direct-chat-msg">'+
						'          <div class="direct-chat-infos clearfix">'+
						'          </div>'+
						'          <div class="direct-chat-text">'+
						$('#dayselect option:selected').text()+' / '+
						$('#weatherselect option:selected').text()+' / '+
						$('#ageselect option:selected').text()+' / '+
						$('#timeselect option:selected').text()+' / '+
						'['+res+']'+
						'          </div>'+
						'        </div>';
			$("#container").prepend(myvar);
		}
	});
}
</script>

</body>
</html>