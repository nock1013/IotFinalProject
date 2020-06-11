<%@page import="java.util.ArrayList"%>
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
  <title>Mandoo | 실시간</title>
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
  <style type="text/css">
		/* 거리표시 팝업*/
		.mPop{
		    border: 1px;
		    background-color: #FFF;
		    font-size: 12px;
		    border-color: #FF0000;
		    border-style: solid;
		    text-align: center;
		}
		/*공통사용 클래스*/
		.mPopStyle {
		    border: 1px;
		    background-color: #FFF;
		    font-size: 12px;
		    border-color: #FF0000;
		    border-style: solid;
		    text-align:left;
		}
		.highcharts-figure, .highcharts-data-table table {
		    min-width: 360px; 
		    max-width: 800px;
		    margin: 1em auto;
		}
		
		.highcharts-data-table table {
			font-family: Verdana, sans-serif;
			border-collapse: collapse;
			border: 1px solid #EBEBEB;
			margin: 10px auto;
			text-align: center;
			width: 100%;
			max-width: 500px;
		}
		.highcharts-data-table caption {
		    padding: 1em 0;
		    font-size: 1.2em;
		    color: #555;
		}
		.highcharts-data-table th {
			font-weight: 600;
		    padding: 0.5em;
		}
		.highcharts-data-table td, .highcharts-data-table th, .highcharts-data-table caption {
		    padding: 0.5em;
		}
		.highcharts-data-table thead tr, .highcharts-data-table tr:nth-child(even) {
		    background: #f8f8f8;
		}
		.highcharts-data-table tr:hover {
		    background: #f1f7ff;
		}
				
	</style>
    <script type="text/javascript">
    
    function clock() {
    	$("#clock").text(new Date().toString().substring(0,24));
    }
    
    
    function reverseGeo(lon, lat) {
		$.ajax({
			method : "GET",
			url : "https://apis.openapi.sk.com/tmap/geo/reversegeocoding?version=1&format=json&callback=result",
			async : false,
			data : {
				"appKey" : "l7xxc04b74e7bc0940dabf45e6cbfcd31748",
				"coordType" : "WGS84GEO",
				"addressType" : "A10",
				"lon" : lon,
				"lat" : lat
			},
			success : function(response) {
				// 3. json에서 주소 파싱
				var arrResult = response.addressInfo;

				//법정동 마지막 문자 
				var lastLegal = arrResult.legalDong
						.charAt(arrResult.legalDong.length - 1);

				// 새주소
				newRoadAddr = arrResult.city_do + ' '
						+ arrResult.gu_gun + ' ';

				if (arrResult.eup_myun == ''
						&& (lastLegal == "읍" || lastLegal == "면")) {//읍면
					newRoadAddr += arrResult.legalDong;
				} else {
					newRoadAddr += arrResult.eup_myun;
				}
				newRoadAddr += ' ' + arrResult.roadName + ' '
						+ arrResult.buildingIndex;

				// 새주소 법정동& 건물명 체크
				if (arrResult.legalDong != ''
						&& (lastLegal != "읍" && lastLegal != "면")) {//법정동과 읍면이 같은 경우

					if (arrResult.buildingName != '') {//빌딩명 존재하는 경우
						newRoadAddr += (' (' + arrResult.legalDong
								+ ', ' + arrResult.buildingName + ') ');
					} else {
						newRoadAddr += (' (' + arrResult.legalDong + ')');
					}
				} else if (arrResult.buildingName != '') {//빌딩명만 존재하는 경우
					newRoadAddr += (' (' + arrResult.buildingName + ') ');
				}

				/* // 구주소
				jibunAddr = arrResult.city_do + ' '
						+ arrResult.gu_gun + ' '
						+ arrResult.legalDong + ' ' + arrResult.ri
						+ ' ' + arrResult.bunji;
				//구주소 빌딩명 존재
				if (arrResult.buildingName != '') {//빌딩명만 존재하는 경우
					jibunAddr += (' ' + arrResult.buildingName);
				} */

				result = newRoadAddr;

				var resultDiv = document.getElementById("address");
				resultDiv.innerHTML = result;

			},
			error : function(request, status, error) {
				console.log("code:" + request.status + "\n"
						+ "message:" + request.responseText + "\n"
						+ "error:" + error);
			}
		});

	}




    function init() {
	    clock();
	    // 최초에 함수를 한번 실행시켜주고 
	    setInterval(clock, 1000);
    }
    
    init();

    
    
    
    /* success: 요청이 성공하고 처리한 데이터를 넘겨 받은 후 
	어떤 방법으로 처리할 것인지 구현(함수명이나 익명함수로) 
    	=> 점수판과 그래프에 표시하는 함수 각각 만들어서 호출
    */
    // JSON데이터 문자열 배열임[각 시뮬레이션마다 초기화]
    highChart_data_array = new Array(0,0,0,0,0);
    
    function ajax(beforePoint0, beforePoint1, point0, point1){
    		// <<jQuery에서 Ajax로 요청하기>> - get방식
			// url => 요청 path
			// data => 파라미터: json형식
			// 		*json형식 {"name":"value";"name":"value";...}
			// success함수: ajax요청해서 성공적으로 데이터를 받아왔을 때 처리할 내용을 함수로 표현
			// dataType: ajax요청 후 응답받을 데이터의 형식
			$.get("/gunzip_final/web/score.do", // RequestMapping에 걸어준 것
					{"beforePoint0":beforePoint0,
					 "beforePoint1":beforePoint1,
					 "point0":point0,
					 "point1":point1
					}, 
					function(data) { //응답 데이터
						//alert(data);
						// ajax로 요청해서 응답받은 데이터를 <span>태그 내부에 출력
						//$("#checkVal_id").text(data);
						score = data.split(",");
						//console.log(score[0]+":"+score[1]);
						$("#danger_score").text(score[0]);
						// 고속국도, 화물차
						// 안전 < 3 주의 < 5 위험 <7  심각>7 [색깔 바꾸기]
						$("#danger_level").text('('+score[1].substring(1)+'단계)');
						numscore = Number(score[0]);
						if(numscore <3){
							$("#danger_grade").text("안전");
							$("#danger_grade").css("background-color", "#10B510");
						}else if(numscore <5){
							$("#danger_grade").text("주의");
							$("#danger_grade").css("background-color", "#FFFF00");
						}else if(numscore <7){
							$("#danger_grade").text("위험");
							$("#danger_grade").css("background-color", "#FFA500");
						}else{
							$("#danger_grade").text("심각");
							$("#danger_grade").css("background-color", "#FF0052");
						}
						
						/* 그래프  */
						
						highChart_data = [new Date().toLocaleTimeString()+"", Number(score[0])];
						highChart_data_array.push(highChart_data);
						// example.push("d"); 배열의 끝에 추가
						// example.shift(); 배열의 첫번째 값 삭제
						//data.shift(); label.shift();
						//data.push(score[0]+''); label.push(new Date().toLocaleTimeString()+''); //현재 시간
						Highcharts.chart('container', {
    			            chart: {
    			                zoomType: 'x'
    			            },
    			            title: {
    			                text: '도로위험도지수'
    			            },
    			            subtitle: {
    			                text: document.ontouchstart === undefined ?
    			                    '(화물차 | 고속도로)' : 'Pinch the chart to zoom in'
    			            },
    			            xAxis: {
    			                type: '도로위험도지수'
    			            },
    			            yAxis: {
    			                title: {
    			                    text: '위험도지수'
    			                }
    			            },
    			            legend: {
    			                enabled: false
    			            },
    			            plotOptions: {
    			                area: {
    			                    fillColor: {
    			                        linearGradient: {
    			                            x1: 0,
    			                            y1: 0,
    			                            x2: 0,
    			                            y2: 1
    			                        },
    			                        stops: [
    			                            [0, Highcharts.getOptions().colors[0]],
    			                            [1, Highcharts.color(Highcharts.getOptions().colors[0]).setOpacity(0).get('rgba')]
    			                        ]
    			                    },
    			                    marker: {
    			                        radius: 2
    			                    },
    			                    lineWidth: 2,
    			                    states: {
    			                        hover: {
    			                            lineWidth: 1
    			                        }
    			                    },
    			                    threshold: null
    			                }
    			            },

    			            series: [{
    			                type: 'area',
    			                name: '도로위험도지수',
    			                // 데이터-> 처음에 배열 생성하고 추가
    			                data: highChart_data_array
    			            }]
    			        });
					},
					"text")
    		
    }
    	
    
		
    	$(function() {
    		//$("#clock").text(new Date());
    		// 멀티캠퍼스에 zoom과 마커 셋팅
		   initTmap();
		   Highcharts.chart('container', {
	            chart: {
	                zoomType: 'x'
	            },
	            title: {
	                text: '도로위험도지수'
	            },
	            subtitle: {
	                text: document.ontouchstart === undefined ?
	                    '(화물차 | 고속도로)' : 'Pinch the chart to zoom in'
	            },
	            xAxis: {
	                type: '도로위험도지수'
	            },
	            yAxis: {
	                title: {
	                    text: '위험도지수'
	                }
	            },
	            legend: {
	                enabled: false
	            },
	            plotOptions: {
	                area: {
	                    fillColor: {
	                        linearGradient: {
	                            x1: 0,
	                            y1: 0,
	                            x2: 0,
	                            y2: 1
	                        },
	                        stops: [
	                            [0, Highcharts.getOptions().colors[0]],
	                            [1, Highcharts.color(Highcharts.getOptions().colors[0]).setOpacity(0).get('rgba')]
	                        ]
	                    },
	                    marker: {
	                        radius: 2
	                    },
	                    lineWidth: 2,
	                    states: {
	                        hover: {
	                            lineWidth: 1
	                        }
	                    },
	                    threshold: null
	                }
	            },

	            series: [{
	                type: 'area',
	                name: '도로위험도지수',
	                // 데이터-> 처음에 배열 생성하고 추가
	                data: highChart_data_array
	            }]
	        });
		  
		});
		
		var map;
		//현재위치를 그릴 레이어 변수
		var markerLayer;
		//현재위치의 바로 이전위치를 그릴 레이어 변수
		var beforeMarkerLayer;
		//위치관제를 위한 변수
		var myVar;
		var markerList = [];
		var beforeMarkerList = [];
		var pointArray = [];
		function initTmap(){
		  
		    // 1. 지도 띄우기
		   map = new Tmapv2.Map("map_div", {
		      center: new Tmapv2.LatLng(37.501311,127.037471),
		      width: "100%",
		      height: "400px"
		   });
		   map.setZoom(15);
		   /* //현재위치의 바로 이전위치를 그릴 레이어 생성
		   beforeMarkerLayer = new Tmap.Layer.Markers();
		   //현재위치를 그릴 레이어 생성
		   markerLayer = new Tmap.Layer.Markers(); */
		  
		}
		function RESET_MARKER(){
		   for (var i = 0; i < markerList.length; i++) {
		      if(undefined != markerList[i]){
		         markerList[i].setMap(null);
		        
		         if(i == markerList.length-1){
		            markerList = [];
		         }
		      }
		    }
		}
		function RESET_MARKER2(){
		  
		   for (var i = 0; i < beforeMarkerList.length; i++) {
		      if(undefined != beforeMarkerList[i]){
		         beforeMarkerList[i].setMap(null);
		        
		         if(i == beforeMarkerList.length-1){
		            beforeMarkerList = [];
		         }
		      }
		    }
		}
		
		
		
			
		function myFunction(cnt, checkLevel){
		    $intRate.each(function(index, element) {
		       var name = element.getElementsByTagName("name")[0].childNodes[0].nodeValue;
		       var number = element.getElementsByTagName("number")[0].childNodes[0].nodeValue;
		       var affiliation = element.getElementsByTagName("affiliation")[0].childNodes[0].nodeValue;
		       var distance = element.getElementsByTagName("distance")[cnt].childNodes[0].nodeValue;
		       var speed = element.getElementsByTagName("speed")[cnt].childNodes[0].nodeValue;
		       var content =
		                '<div class="wrap">' +
		                   '    <div class="info">' +
		                   '        <div class="title">' +
		                   '            '+name +
		                   '        </div>' +
		                   '        <div class="body">' +
		                   '            <div class="desc">' +
		                   '                <div><span>차량번호</span> '+number+'</div>' +
		                   '                <div><span>소속지사</span> '+affiliation+'</div>' +
		                   '                <div><span>운행거리</span> '+distance+'km</div>' +
		                   '                <div><span>현재속도</span> '+speed+'km/h</div>' +
		                   '            </div>' +
		                   '        </div>' +
		                   '    </div>' +
		                   '</div>';
		      
		       //현재위치 바로 이전 위치를 그리기 위한 부분
		       if(cnt > 0 && cnt >= 1 && cnt < 42 && checkLevel != 4){
		          //현재위치 갱신후 이전위치에 있던 마커 삭제
		          //markerLayer.clearMarkers();
		         
		          var beforePoint = element.getElementsByTagName("coordinates")[cnt-1].childNodes[0].nodeValue.split(',');
		          var beforeIcon = '/gunzip_final/dist/img/before_car.png';
		          //var beforeLonlat = new Tmap.LonLat(beforePoint[0],beforePoint[1]).transform("EPSG:4326", "EPSG:3857");
		          //beforeMarker = new Tmap.Marker(beforeLonlat, beforeIcon);
		          beforeMarker = new Tmapv2.Marker({
		            position: new Tmapv2.LatLng(beforePoint[1]*=1,beforePoint[0]*= 1),
		            icon: beforeIcon,
		            map: map
		         });
		          beforeMarkerList.push(beforeMarker);
		         
		       }
		      
		       var point = element.getElementsByTagName("coordinates")[cnt].childNodes[0].nodeValue.split(',');
		      var icons = '/gunzip_final/dist/img/pin_car.png';
		      /* 위험도지수 ============================================================ */
		      if(checkLevel != 4 && cnt > 0){
		       ajax(beforePoint[0]*1, beforePoint[1]*1, point[0]*1, point[1]*1);
		      	/* reverse GEO =====================================================================  */
		      	reverseGeo(point[0]*1, point[1]*1);
		      }
		      
		      marker = new Tmapv2.Marker({
		            position: new Tmapv2.LatLng(point[1]*=1,point[0]*= 1),
		            icon: icons,
		            map: map
		         });
		          markerList.push(marker);
		          map.setCenter(new Tmapv2.LatLng(point[1]*=1,point[0]*= 1));
		    });
		}
		
		
		
		//위치 관제 총 4단계 -> 단계별로 진행을 위한 함수
		function changeLoad(checkLevel, kml){
		  
		
		   //위치 관제 시작을 선택했을 경우
		   if(checkLevel==3){
			   RESET_MARKER();
			   var result ='관제 시작'; 
			   var resultDiv = document.getElementById("result");
			   resultDiv.innerHTML = result;
			   
			  
			   if(window.XMLHttpRequest){
					xhttp=new XMLHttpRequest();
				}else{
					xhttp=new ActiveXObject("Microsoft.XMLDOM");
				}
				xhttp.open("GET","/gunzip_final/kml/"+kml,false);
				xhttp.send();
				var prtcl = xhttp.responseXML;
				var marker;
				var beforeMarker;
				var popup,popup2;
				var beforePopup,beforePopup2;
				var prtclString = new XMLSerializer().serializeToString(prtcl);//xml to String
				xmlDoc = $.parseXML( prtclString ),
				$xml = $( xmlDoc ),
				$intRate = $xml.find("Placemark");
				var number = $intRate.find("number");
			  
				console.log("마커리스트 : "+markerList);
			    console.log("비포마커리스트 : "+beforeMarkerList);
		      //result창에 있는 내용 제거
		      var result = "";
		      var resultDiv = document.getElementById("result");
		      resultDiv.innerHTML = result;
		    
		
		      
		      // 3. 위치 관제 시작
		      var cnt = 1;
		      
		      myVar = setInterval(function(){
		         //markerLayer.clearMarkers();
		         RESET_MARKER();
		         
		         var count = $xml.find("Placemark")[0].getElementsByTagName("coordinates").length;
		         console.log(count);
		         if(cnt == count){
		            cnt = 0;
		            RESET_MARKER();
		            RESET_MARKER2();
		            //markerLayer.clearMarkers();
		            //beforeMarkerLayer.clearMarkers();
		            highChart_data_array = new Array(0,0,0,0,0);
		         }
		         myFunction(cnt);
		         cnt++;
		      }, 10000);
			
		   }
		   
		   if(checkLevel==4||checkLevel>=4){
			   clearTimeout(myVar);
			   //markerList=[];
			   RESET_MARKER2();
			   // 마커 삭제
			   //markerLayer.clearMarkers();
			   highChart_data_array = new Array(0,0,0,0,0);
			   //var lastIndex = $intRate.find("coordinates").length-1;
			   //myFunction(lastIndex,checkLevel);
			  
			   var result ='관제 종료';
			   var resultDiv = document.getElementById("result");
			   resultDiv.innerHTML = result;
		   }
		  
		}
	
	</script>
		            
  
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
                <a href="/gunzip_final/index.do" class="nav-link active">
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
            <h1 class="m-0 text-dark">군집주행 실시간 현황</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">군집주행 실시간 현황</li>
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
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3 id = carnumtotal>0</h3>
                <p>현재 주행 중인 차량 수</p>
              </div>
              
              <div class="icon">
                <i class="ion ion-android-bus"></i>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <span id="danger_score" style="font-size: 35px; font-weight: bold" >0.00</span>
                <span id="danger_level" style="font-size: 20px">01</span>

                <p>도로 위험도</p>
              </div>
              <div class="icon">
                <i style="font-color: blue" class="ion ion-stats-bars"></i>
              </div>
              <div style="font-color: #10B510; align-items: center;">
              	<h1 id="danger_grade"></h1>
              </div>
            
              <a href="http://taas.koroad.or.kr/web/shp/sbm/initRiskRoadFrcstSys.do?menuId=WEB_KMP_TAI_AFS" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3 id = usertotal>0</h3>

                <p>현재 주행 중인 사용자</p>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                <h4 id="address"><b>현재 위치</b></h4>
                <h4 id="clock">00:00</h4>
              </div>
              <div class="icon">
                <i class="ion ion-pie-graph"></i>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
        </div>
        <!-- /.row -->
        <!-- Main row -->
        <div class="row">
          <!-- Left col -->
          <section class="col-lg-7 connectedSortable">
            <!-- Custom tabs (Charts with tabs)-->
            <!-- solid sales graph -->
            <div class="card bg-gradient-info">
              <div class="card-header border-0">
                <h3 class="card-title">
                  <i class="fas fa-th mr-1"></i>
                  	위치기반 교통사고위험지수
                </h3>

                <div class="card-tools">
                  <button type="button" class="btn bg-info btn-sm" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn bg-info btn-sm" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <div class="card-body" style="height:500px">
              	<figure class="highcharts-figure" style="min-height: 200px; height: 200px; max-height: 200px; max-width: 100%;">
				    <div id="container"></div>
				    
				</figure>
              	
              </div>
             
              <!-- /.card-body -->
              <div class="card-footer bg-transparent">
                <div class="row">
                  <!-- <div class="col-4 text-center">
                    <input type="text" class="knob" data-readonly="true" value="20" data-width="60" data-height="60"
                           data-fgColor="#39CCCC">

                    <div class="text-white">Mail-Orders</div>
                  </div>
                  ./col
                  <div class="col-4 text-center">
                    <input type="text" class="knob" data-readonly="true" value="50" data-width="60" data-height="60"
                           data-fgColor="#39CCCC">

                    <div class="text-white">Online</div>
                  </div>
                  ./col
                  <div class="col-4 text-center">
                    <input type="text" class="knob" data-readonly="true" value="30" data-width="60" data-height="60"
                           data-fgColor="#39CCCC">

                    <div class="text-white">In-Store</div>
                  </div>
                  ./col -->
                </div>
                <!-- /.row -->
              </div>
              <!-- /.card-footer -->
            </div>
            <!-- /.card -->

            <!-- DIRECT CHAT -->
            <div class="card direct-chat direct-chat-primary">
              <div class="card-header">
                <h3 class="card-title">차량 정보</h3>

                <div class="card-tools">
                  <span data-toggle="tooltip" title="3 New Messages" class="badge badge-primary">3</span>
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-toggle="tooltip" title="Contacts"
                          data-widget="chat-pane-toggle">
                    <i class="fas fa-comments"></i>
                  </button>
                
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <!-- Conversations are loaded here -->
                <div id="usinglist" class="direct-chat-messages">

                </div>
                <!--/.direct-chat-messages-->
              </div>
              <!-- /.card-body -->
            </div>
            
            <!-- /.card -->
          </section>
          <!-- /.Left col -->
          <!-- right col (We are only adding the ID to make the widgets sortable)-->
          <section class="col-lg-5 connectedSortable">

            <!-- Map card -->
            <div class="card bg-gradient-primary">
              <div class="card-header border-0">
                <h3 class="card-title">
                  <i class="fas fa-map-marker-alt mr-1"></i>
                  	현재 위치(지도)
                </h3>
                <!-- card tools -->
                <div class="card-tools">
                  <button type="button"
                          class="btn btn-primary btn-sm daterange"
                          data-toggle="tooltip"
                          title="Date range">
                    <i class="far fa-calendar-alt"></i>
                  </button>
                  <button type="button"
                          class="btn btn-primary btn-sm"
                          data-card-widget="collapse"
                          data-toggle="tooltip"
                          title="Collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                </div>
                <!-- /.card-tools -->
              </div>
              <div class="card-body">
              	<div id="map_div"></div>
				<p id="result" />    
                <!-- <div id="world-map" style="height: 250px; width: 100%;"></div> -->
              </div>
              <!-- /.card-body-->
              <div class="card-footer bg-transparent"> 
              <div id="result"></div>
                <div class="row">
                  <div class="col-4 text-center">
                  	<div id="sparkline-1"></div>
                    <input type="button" value = "시뮬레이션1" onclick="changeLoad(3,'sample.kml');">
                  </div>
                  <!-- ./col -->
                  <div class="col-4 text-center">
                  	<div id="sparkline-2"></div>
                    <input type="button" value = "시뮬레이션2" onclick="changeLoad(3, 'sample2.kml');">
                  </div>
                  <!-- ./col -->
                  <div class="col-4 text-center">
                    <div id="sparkline-3"></div>
                    <input type="button" value = "시뮬레이션3" onclick="changeLoad(3,'sample3.kml');">
                  </div>
                  <!-- ./col -->
                </div>
                <!-- /.row -->
                <div class="row">
                	<input type="button" value = "중지" style="background-color:#F8BEBE" onclick="changeLoad(4,'');">
                </div>
            
              </div>
            </div>
            <!-- /.card -->
          </section>
          <!-- right col -->
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
<%ArrayList<String> userlist = new ArrayList<String>();%>
                  		$(document).ready(function () {
                  			var lastid = "";
                  			timer = setInterval(function() {
								$.ajax({
									url : "/gunzip_final/carlist/getUsingList.do",
										cache : false,
										type: "GET",
									 	contentType: "application/x-www-form-urlencoded; charset=UTF-8",
										success : function (html){
											var json = JSON.parse(html);
											var len = json.length;
											if(len>0){
												var result = [];
												var myvar2 = '<h3>'+len+'</h3>' //차량 수
												$("#carnumtotal").empty();
												$("#carnumtotal").prepend(myvar2)
												console.log(lastid);
												$("#usinglist").empty();
												for(var i=0;i<len;i++){
													result[i] = json[i].userid;
													// 차량 운행 리스트 myvar
													var myvar = 
													'<div class="direct-chat-msg">'+
														'<div class="direct-chat-infos clearfix">'+
															'<span class="direct-chat-name float-left">'+json[i].userid+'</span>'+
								                    		'<span class="direct-chat-timestamp float-right">'+json[i].savedate+'</span>'+
														'</div>'+
								                    	'<img class="direct-chat-img" src="/gunzip_final/dist/img/user1-128x128.jpg" alt="message user image">'+
														'<div class="direct-chat-text">'+json[i].carnum+'</div>'+													 
													'</div>';
													$("#usinglist").prepend(myvar);
													console.log(result);
												}
												const set = Array.from(new Set(result));
												var sizer = set.length;
												$("#usertotal").empty();
												var myvar3 = '<h3>'+sizer+'</h3>';  //등록된 사용자
												$("#usertotal").prepend(myvar3);
											}
										}
								});
							}, 10000);
						});
     	</script>
</body>
</html>