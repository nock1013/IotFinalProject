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

  <title>Mandoo | 통계</title>

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
                <a href="/gunzip_final/index3.do" class="nav-link active">
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
            <h1 class="m-0 text-dark">통계 데이터</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/gunzip_final/index.do">Home</a></li>
              <li class="breadcrumb-item active">통계 데이터</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
        
<!-- Left Side -->
          <div class="col-lg-6">
            
<!-- 연도별 사고 통계 -->
			<%
			List<index3YearDTO> ylist = (List)request.getAttribute("yearcnt");
			int ylen = ylist.size();
			%>
            <div class="card">
              <div class="card-header border-0">
                <div class="d-flex justify-content-between">
                  <h3 class="card-title">지난 10년 간 연도별 사고 건수</h3>
                  <a href="javascript:void(0);">데이터 확인</a>
                </div>
              </div>
              <div class="card-body">
                <div class="d-flex">
                  <p class="d-flex flex-column">
                    <span class="text-bold text-lg"><%=ylist.get(ylen-1).getyearcnt()%></span>
                    <span><%=ylist.get(ylen-1).getYear()%>년 화물차 사고 건수</span>
                  </p>
                  <p class="ml-auto d-flex flex-column text-right">
                    <span class="text-success">
                    <%
                      double thisyear = ylist.get(ylen-1).getyearcnt();
                      double lastyear = ylist.get(ylen-2).getyearcnt();
                      double d = Math.round(((thisyear-lastyear)/thisyear)*1000)/10.0;
                      double abs = Math.abs(d);
                    %>
                    <%if(d>0){ %>
                      <i class="fas fa-arrow-up"></i>
                    <%}else if(d<0){ %>
                      <i class="fas fa-arrow-down"></i>
                    <%} %>
                      <%=abs %>
                      %
                    </span>
                    <span class="text-muted">작년 대비</span>
                  </p>
                </div>
                <!-- /.d-flex -->
                
				
                <div style="width:100%;">
					<canvas id="yearChart" height="200"></canvas>
				</div>
				<br>
				<script>
				window.chartColors = {
					      red: 'rgb(255, 99, 132)',
					      orange: 'rgb(255, 159, 64)',
					      yellow: 'rgb(255, 205, 86)',
					      green: 'rgb(75, 192, 192)',
					      blue: 'rgb(54, 162, 235)',
					      purple: 'rgb(153, 102, 255)',
					      grey: 'rgb(201, 203, 207)'
					    };
					var config = {
						type: 'line',
						data: {
 							labels: [
 								<%
								for(int i=ylen-10;i<ylen;i++){%>
									<%=ylist.get(i).getYear()%>,
								<%}%>
 								],
							datasets: [{
								label: '사고 건수',
								backgroundColor: window.chartColors.red,
								borderColor: window.chartColors.red,
								data: [
									<%
									for(int i=ylen-10;i<ylen;i++){%>
										<%=ylist.get(i).getyearcnt()%>,
									<%}%>
								],
								fill: false,
							}]
						},
						options: {
							responsive: true,
							tooltips: {
								mode: 'index',
								intersect: false,
							},
							hover: {
								mode: 'nearest',
								intersect: true
							},
							scales: {
								xAxes: [{
									display: true,
									scaleLabel: {
										display: true,
										labelString: '연도'
									}
								}],
								yAxes: [{
									display: true,
									scaleLabel: {
										display: true,
										labelString: '건수'
									}
								}]
							}
						}
					};
					var colorNames = Object.keys(window.chartColors);
				</script>
              </div>
            </div>
            
<!-- 요일별 사고 통계 -->
            <div class="card">
              <div class="card-header border-0">
                <h3 class="card-title">요일별 교통사고 통계 (전체)</h3>
                <div class="card-tools">
                  <a href="#" class="btn btn-tool btn-sm">
                    <i class="fas fa-download"></i>
                  </a>
                  <a href="#" class="btn btn-tool btn-sm">
                    <i class="fas fa-bars"></i>
                  </a>
                </div>
              </div>
              <div class="card-body table-responsive p-0">
                <table class="table table-striped table-valign-middle">
                  <thead>
                  <tr>
                    <th>요일</th>
                    <th>건수</th>
                  </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${daycnt}" var="day">
                  <tr>
                  	<td>
                  		${day.accidentday}
                 	</td>
                 	<td>
                 		${day.cnt}
                 	</td>
                 </tr>
                 </c:forEach>
                 </tbody>
                </table>
              </div>
            </div>
          
<!-- 기상 상태 별 -->
			<%
			List<index3WeatherDTO> wlist = (List)request.getAttribute("weathercnt");
			int wlen = wlist.size();
			%>
            <div class="card">
              <div class="card-header border-0">
                <h3 class="card-title">기상 상태별 교통사고 통계</h3>
                <div class="card-tools">
                  <a href="#" class="btn btn-sm btn-tool">
                    <i class="fas fa-download"></i>
                  </a>
                  <a href="#" class="btn btn-sm btn-tool">
                    <i class="fas fa-bars"></i>
                  </a>
                </div>
              </div>
              <div class="card-body">
                <div class="d-flex justify-content-between align-items-center border-bottom mb-3">
                  <p class="text-xl" style="color: red">
                  	맑음
                  </p>
                  <p class="d-flex flex-column text-right">
                    <span class="font-weight-bold">
                      	<%=wlist.get(2).getCnt() %>건	
                    </span>
                    <span class="text-muted">(%)</span>
                  </p>
                </div>
                <!-- /.d-flex -->
                <div class="d-flex justify-content-between align-items-center border-bottom mb-3">
                  <p class="text-xl" style="color: orange">
                  	흐림
                  </p>
                  <p class="d-flex flex-column text-right">
                    <span class="font-weight-bold">
                      	<%=wlist.get(5).getCnt() %>건
                    </span>
                    <span class="text-muted">(%)</span>
                  </p>
                </div>
                <!-- /.d-flex -->
                <div class="d-flex justify-content-between align-items-center mb-0">
                  <p class="text-xl" style="color: yellow">
                  	비
                  </p>
                  <p class="d-flex flex-column text-right">
                    <span class="font-weight-bold">
                      	<%=wlist.get(3).getCnt() %>건
                    </span>
                    <span class="text-muted">(%)</span>
                  </p>
                </div>
                <!-- /.d-flex -->
                <div class="d-flex justify-content-between align-items-center mb-0">
                  <p class="text-xl" style="color: green">
                    	안개
                  </p>
                  <p class="d-flex flex-column text-right">
                    <span class="font-weight-bold">
                      <%=wlist.get(4).getCnt() %>건
                    </span>
                    <span class="text-muted">(%)</span>
                  </p>
                </div>
                <!-- /.d-flex -->
                <div class="d-flex justify-content-between align-items-center mb-0">
                  <p class="text-xl" style="color: blue">
                    	눈
                  </p>
                  <p class="d-flex flex-column text-right">
                    <span class="font-weight-bold">
                      <%=wlist.get(1).getCnt() %>건
                    </span>
                    <span class="text-muted">(%)</span>
                  </p>
                </div>
                <!-- /.d-flex -->
                <div class="d-flex justify-content-between align-items-center mb-0">
                  <p class="text-danger text-xl">
                    	기타
                  </p>
                  <p class="d-flex flex-column text-right">
                    <span class="font-weight-bold">
                      <%=wlist.get(0).getCnt() %>건
                    </span>
                    <span class="text-muted">(%)</span>
                  </p>
                </div>
              </div>
            </div>
          </div>
          
       	<!-- Right Side -->
          <div class="col-lg-6">
<!-- 월벼 사고 통계 -->
			<%
			List<index3DataDTO> mlist = (List)request.getAttribute("monthcnt");
			int mlen = mlist.size();
			%>
            <div class="card">
              <div class="card-header border-0">
                <div class="d-flex justify-content-between">
                  <h3 class="card-title">월별 사고 합계</h3>
                  <a href="javascript:void(0);">데이터 확인</a>
                </div>
              </div>
              <div class="card-body">
                <div class="d-flex">
                  <p class="d-flex flex-column">
                    <span class="text-bold text-lg"><%=mlist.get(mlen-1).getCnt() %> 건</span>
                    <span><%=ylist.get(ylen-1).getYear()%>년 <%=mlist.get(mlen-1).getData() %> 발생 사고 건수</span>
                  </p>
                  <p class="ml-auto d-flex flex-column text-right">
                    <span class="text-success">
                    <%
                      double thismonth = mlist.get(mlen-1).getCnt();
                      double lastmonth = mlist.get(mlen-2).getCnt();
                      double md = Math.round(((thismonth-lastmonth)/thismonth)*1000)/10.0;
                      double mabs = Math.abs(md);
                    %>
                    <%if(md>0){ %>
                      <i class="fas fa-arrow-up"></i>
                    <%}else if(md<0){ %>
                      <i class="fas fa-arrow-down"></i>
                    <%} %>
                    <%=mabs %>%
                    </span>
                    <span class="text-muted">지난 달 대비</span>
                  </p>
                </div>
                <!-- /.d-flex -->

                <div class="position-relative mb-4">
                  <canvas id="monthChart" height="200"></canvas>
                </div>
                <script>
                var config1 = {
                		"type":"bar",
                		"data":{
                			"labels":[
                				<%
								for(int i=0;i<mlen;i++){%>
									<%='"'+mlist.get(i).getData()+'"'%>,
								<%}%>
							],
                			"datasets":[{
                					"label":"월간 사고 건수 합계",
                					"data":[
                						<%
        								for(int i=0;i<mlen;i++){%>
        									<%=mlist.get(i).getCnt()%>,
        								<%}%>
                					],
                					"fill":false,
                					"backgroundColor":["rgba(255, 99, 132, 0.4)","rgba(255, 159, 64, 0.4)","rgba(255, 205, 86, 0.4)","rgba(75, 192, 192, 0.4)","rgba(54, 162, 235, 0.4)","rgba(153, 102, 255, 0.4)","rgba(201, 203, 7, 0.4)","rgba(255, 99, 132, 0.4)","rgba(255, 159, 64, 0.4)","rgba(255, 205, 86, 0.4)","rgba(75, 192, 192, 0.4)","rgba(54, 162, 235, 0.4)"/* ,"rgba(153, 102, 255, 0.2)","rgba(201, 203, 207, 0.2)" */],
                					"borderColor":["rgb(255, 99, 132)","rgb(255, 159, 64)","rgb(255, 205, 86)","rgb(75, 192, 192)","rgb(54, 162, 235)","rgb(153, 102, 255)","rgb(201, 203, 7)","rgb(255, 99, 132)","rgb(255, 159, 64)","rgb(255, 205, 86)","rgb(75, 192, 192)","rgb(54, 162, 235)"/* ,"rgb(153, 102, 255)","rgb(201, 203, 207)" */],
                					"borderWidth":1
                				}]
                		},
                		"options":{
                			"scales":{
                				"yAxes":[{
                					"ticks":{
                						"beginAtZero":true
                					}
                				}]
                			}
                		}
                };
                </script>
                <div class="d-flex flex-row justify-content-end">
                </div>
              </div>
            </div>
            
<!-- 시간대별 사고 통계 -->
			<%
			List<index3DataDTO> tlist = (List)request.getAttribute("timecnt");
			int tlen = tlist.size();
			%>
            <div class="card">
              <div class="card-header border-0">
                <div class="d-flex justify-content-between">
                  <h3 class="card-title">시간대별 사고 통계</h3>
                  <a href="javascript:void(0);">데이터 확인</a>
                </div>
              </div>
              <div class="card-body">
                <div class="position-relative mb-4">
                  <canvas id="timeChart" height="200"></canvas>
                </div>
                <br>
				<script>
					var config2 = {
						type: 'line',
						data: {
 							labels: [
 								<%
								for(int i=0;i<tlen;i++){%>
									<%='"'+tlist.get(i).getData()+'"'%>,
								<%}%>
 								],
							datasets: [{
								label: '사고 건수',
								backgroundColor: window.chartColors.blue,
								borderColor: window.chartColors.blue,
								data: [
									<%
									for(int i=0;i<tlen;i++){%>
										<%=tlist.get(i).getCnt()%>,
									<%}%>
								],
								fill: false,
							}]
						},
						options: {
							responsive: true,
							tooltips: {
								mode: 'index',
								intersect: false,
							},
							hover: {
								mode: 'nearest',
								intersect: true
							},
							scales: {
								xAxes: [{
									display: true,
									scaleLabel: {
										display: true,
										labelString: '시간대'
									}
								}],
								yAxes: [{
									display: true,
									scaleLabel: {
										display: true,
										labelString: '건수'
									}
								}]
							}
						}
					};
				 
                </script>
              </div>
            </div>
            <!-- /.card -->
            
<!-- 연령대별 사고 통계 -->
			<%
			List<index3DataDTO> alist = (List)request.getAttribute("agecnt");
			int alen = alist.size();
			%>
            <div class="card">
              <div class="card-header border-0">
                <div class="d-flex justify-content-between">
                  <h3 class="card-title">연령대별 사고 통계</h3>
                  <a href="javascript:void(0);">데이터 확인</a>
                </div>
              </div>
              <div class="card-body">
                <div class="position-relative mb-4">
                  <canvas id="ageChart" height="200"></canvas>
                </div>
                <br>
				<script>
					var config3 = {
						type: 'line',
						data: {
 							labels: [
 								<%
								for(int i=0;i<alen;i++){%>
									<%='"'+alist.get(i).getData()+'"'%>,
								<%}%>
 								],
							datasets: [{
								label: '사고 건수',
								backgroundColor: window.chartColors.red,
								borderColor: window.chartColors.red,
								data: [
									<%
									for(int i=0;i<alen;i++){%>
										<%=alist.get(i).getCnt()%>,
									<%}%>
								],
								fill: false,
							}]
						},
						options: {
							responsive: true,
							tooltips: {
								mode: 'index',
								intersect: false,
							},
							hover: {
								mode: 'nearest',
								intersect: true
							},
							scales: {
								xAxes: [{
									display: true,
									scaleLabel: {
										display: true,
										labelString: '연령'
									}
								}],
								yAxes: [{
									display: true,
									scaleLabel: {
										display: true,
										labelString: '건수'
									}
								}]
							}
						}
					};
					window.onload = function() {
	                	var ctx = document.getElementById('yearChart').getContext('2d');
						window.myLine = new Chart(ctx, config);
	                	var ctx1 = document.getElementById("monthChart").getContext('2d');
	                	var monthChart = new Chart(ctx1,config1);
	                	var ctx2 = document.getElementById("timeChart").getContext('2d');
	                	var timeChart = new Chart(ctx2,config2);
	                	var ctx3 = document.getElementById("ageChart").getContext('2d');
	                	var ageChart = new Chart(ctx3,config3);
					};
				</script>
              </div>
            </div>
          </div>
          <!-- /.col-md-6 -->
        </div>
        <!-- /.row -->
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
</body>
</html>
