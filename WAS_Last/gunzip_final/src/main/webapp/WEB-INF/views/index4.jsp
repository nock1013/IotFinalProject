<%@page import="com.gunzip.mandooweb.index3.index3WeatherDTO"%>
<%@page import="com.gunzip.mandooweb.index3.index3YearDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.gunzip.mandooweb.index3.index3DataDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title>Mandoo | 서버 로그</title>

  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="/gunzip_final/plugins/fontawesome-free/css/all.min.css">
  <!-- IonIcons -->
  <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/gunzip_final/dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<style>
	canvas{
		-moz-user-select: none;
		-webkit-user-select: none;
		-ms-user-select: none;
	}
	</style>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to to the body tag
to get the desired effect
|---------------------------------------------------------|
|LAYOUT OPTIONS | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition sidebar-mini">
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
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button"><i
            class="fas fa-th-large"></i></a>
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
                <a href="/gunzip_final/index6.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>위험 지수</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/gunzip_final/index4.do" class="nav-link active">
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
            <h1 class="m-0 text-dark">서버 로그</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/gunzip_final/index.do">Home</a></li>
              <li class="breadcrumb-item active">서버 로그</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        	<!-- DIRECT CHAT -->
                <div class="card direct-chat direct-chat-warning">
                  <div class="card-header">
                    <h3 class="card-title">MongoDB Realtime LOG</h3>
                  </div>
                  <!-- /.card-header -->
                  <div class="card-body">
                    <!-- Conversations are loaded here -->
                    <div class="direct-chat-messages" id="msgTable" style="height:40rem; ; overflow: auto;">
                    <!-- ajax 통신 내용 들어오는 부분 -->
                    </div>
                    <!-- /.direct-chat-pane -->
                  </div>
                  <!-- /.card-body -->
                </div>
                <!--/.direct-chat -->
      </div>
      <!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="/gunzip_final/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="/gunzip_final/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE -->
<script src="/gunzip_final/dist/js/adminlte.js"></script>

<!-- OPTIONAL SCRIPTS -->
<script src="/gunzip_final/plugins/chart.js/Chart.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<script src="/gunzip_final/dist/js/demo.js"></script>
<script src="/gunzip_final/dist/js/pages/dashboard3.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		var lastid = "";
		timer = setInterval( function () {
			$.ajax ({
				url : "/gunzip_final/mongo/selectAllLog.do?_id="+lastid,
				cache : false,
				success : function (html){
					var json = JSON.parse(html);
					var len = json.length;
					if(len>0){
						//lastid = json[len-1].saveDate;
						lastid = json[len-1].saveDate;
						console.log(lastid);
						var result = [];
						for(var i=0;i<len;i++){
							var myvar = '<div class="direct-chat-msg">'+
							'          <div class="direct-chat-infos clearfix">'+
							'          </div>'+
							'          <div class="direct-chat-text">'+
							json[i].msg+
							'          </div>'+
							'        </div>';
										$("#msgTable").prepend(myvar);
						}
					}else{
						
					}
				}
			});
		}, 5000); // 5초에 한번씩 받아온다.
	})
</script>

</body>
</html>
