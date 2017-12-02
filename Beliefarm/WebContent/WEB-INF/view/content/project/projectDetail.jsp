<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if lt IE 7]>      <html lang="en" class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html lang="en" class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html lang="en" class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en" class="no-js"> <!--<![endif]-->

<head>
    	<!-- meta character set -->
        <meta charset="utf-8">
		<!-- Always force latest IE rendering engine or request Chrome Frame -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>BelieFarm </title>		
		<!-- Meta Description -->
        <meta name="description" content="Blue One Page Creative HTML5 Template">
        <meta name="keywords" content="one page, single page, onepage, responsive, parallax, creative, business, html5, css3, css3 animation">
        <meta name="author" content="Muhammad Morshed">
		
		<!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
		
		<!-- CSS
		================================================== -->
		
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
		
		<!-- Fontawesome Icon font -->
        <link rel="stylesheet" href="/Beliefarm/resources/assets/css/font-awesome.min.css">
		<!-- bootstrap.min -->
        <link rel="stylesheet" href="/Beliefarm/resources/assets/css/jquery.fancybox.css">
		<!-- bootstrap.min -->
        <link rel="stylesheet" href="/Beliefarm/resources/assets/css/bootstrap.min.css">
		<!-- bootstrap.min -->
        <link rel="stylesheet" href="/Beliefarm/resources/assets/css/owl.carousel.css">
		<!-- bootstrap.min -->
        <link rel="stylesheet" href="/Beliefarm/resources/assets/css/slit-slider.css">
		<!-- bootstrap.min -->

        <link rel="stylesheet" href="/Beliefarm/resources/assets/css/animate.css">
		<!-- Main Stylesheet -->
        <link rel="stylesheet" href="/Beliefarm/resources/assets/css/main.css">
		
		<style>
		.cursor-point{cursor: pointer;}
		</style>
		
		<!-- Modernizer Script for old Browsers -->
        <script src="/Beliefarm/resources/assets/js/modernizr-2.6.2.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        
        <!--구글차트-->
        <script src="https://www.gstatic.com/charts/loader.js"></script> 
        
        <script type="text/javascript">
		$(document).ready(function(){
			//처음엔 소개 영역 표시 
			storyShow();
		});
		
		function storyShow(){
			$("#diary").hide();
			$("#diaryBtn").css('border-bottom', '');
			$("#qNa").hide();
			$("#qNaBtn").css('border-bottom', '');
			$("#story").show();
			$("#storyBtn").css('border-bottom', '2px solid rgba(0,0,0, 0.1)');	
			$("#showRewards").show();
		}
		function diaryShow(){
			$("#story").hide();
			$("#storyBtn").css('border-bottom', '');
			$("#qNa").hide();
			$("#qNaBtn").css('border-bottom', '');
			$("#diary").show();
			$("#diaryBtn").css('border-bottom', '2px solid rgba(0,0,0, 0.1)');
			$("#showRewards").hide();
		}
		function qNaShow(){
			$("#story").hide();
			$("#storyBtn").css('border-bottom', '');
			$("#diary").hide();
			$("#diaryBtn").css('border-bottom', '');
			$("#qNa").show();
			$("#qNaBtn").css('border-bottom', '2px solid rgba(0,0,0, 0.1)');
			$("#showRewards").show();
		}
</script>


		<!-- 농사일기 그래프 그리기 start -->
		<!-- 대기온도 --> 
		<script type="text/javascript">
		google.charts.load('current', {packages: ['corechart', 'line']});
		google.charts.setOnLoadCallback(drawBackgroundColor);
	       function drawBackgroundColor() {
	    	   var values = []; //dayValueList를 받을 변수
           var tempValues = [];
           $.ajax({
                 "url" : "/Beliefarm/dayValue/selectDayValue.do",
                 "data" : { "projectId" : $("#projectId").val() },
                 "dataType" : "JSON",
                 "success": function(result) {
                       if(result.code=="OK"){                          
                          values = result.dayValueList;
                          var count = 0;                          
                          $.each(values, function(index, value){
                                   tempValues[count] = new Array(2);                                   
                                   tempValues[count][0] = index+1;
                                   tempValues[count][1] = value.avgTemp;
                                   count++;                                                  
                          });                           
                          /* --------------------온도 그래프 그리기  ----------------- */
                          var data = new google.visualization.DataTable();
                           data.addColumn('number', '날짜');
                           data.addColumn('number', '온도');                           
                           data.addRows(tempValues);
                           
                           var options = {
                             hAxis: {
                               title: '날짜'
                             },
                             vAxis: {
                               title: '실내온도'
                             },
                             backgroundColor: '#ffffff'
                           };
                     
                           var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
                           chart.draw(data, options);
                           /* --------------------온도 그래프 그리기 끝 ----------------- */                                                  
                       }else{
                          alert("fail");
                       }
                 }
              });//ajax끝                
         }

		</script>
		  
		  
		<!--대기습도-->	  
		<script type="text/javascript">
		google.charts.load('current', {packages: ['corechart', 'line']});
		google.charts.setOnLoadCallback(drawBackgroundColor);		
		function drawBackgroundColor() {
			var values = []; //dayValueList를 받을 변수
	        var tempValues = [];
	        $.ajax({
                 "url" : "/Beliefarm/dayValue/selectDayValue.do",
                 "data" : { "projectId" : $("#projectId").val() },
                 "dataType" : "JSON",
                 "success": function(result) {
                       if(result.code=="OK"){	                          
                          values = result.dayValueList;
                          var count = 0;	                          
                          $.each(values, function(index, value){
                                   tempValues[count] = new Array(2);                                   
                                   tempValues[count][0] = index+1;
                                   tempValues[count][1] = value.avgHumid;
                                   count++;       
                          });
                          /* --------------------대기 습도 그래프 그리기  ----------------- */
                          var data = new google.visualization.DataTable();
					      data.addColumn('number', '날짜');
					      data.addColumn('number', '대기 습도');
					
					      data.addRows(tempValues);
					
					      var options = {
					        hAxis: {
					          title: '날짜'
					        },
					        vAxis: {
					          title: '대기습도'
					        },
					        backgroundColor: '#ffffff'
					      };
					
					      var chart = new google.visualization.LineChart(document.getElementById('chart_air_hum'));
					      chart.draw(data, options);
                           /* --------------------대기 습도 그래프 그리기 끝 ----------------- */                                                  
                       }else{
                          alert("fail");
                       }
                 }
	          });//ajax끝            
		}
		</script>
				  
		<!--토양습도-->
		<script type="text/javascript">
		google.charts.load('current', {packages: ['corechart', 'line']});
		google.charts.setOnLoadCallback(drawBackgroundColor);			
		function drawBackgroundColor() {
			var values = []; //dayValueList를 받을 변수
	        var tempValues = [];
	        $.ajax({
                "url" : "/Beliefarm/dayValue/selectDayValue.do",
                "data" : { "projectId" : $("#projectId").val() },
                "dataType" : "JSON",
                "success": function(result) {
                      if(result.code=="OK"){	                          
                         values = result.dayValueList;
                         var count = 0;	                          
                         $.each(values, function(index, value){
                                  tempValues[count] = new Array(2);                                   
                                  tempValues[count][0] = index+1;
                                  tempValues[count][1] = value.avgWater;
                                  count++;       
                         });	
                         /* --------------------토양 습도 그래프 그리기  ----------------- */
                         var data = new google.visualization.DataTable();
						data.addColumn('number', '날짜');
				        data.addColumn('number', '토양 습도');
					
					    data.addRows(tempValues);
					    var options = {
					 	        hAxis: {
					 	          title: '날짜'
					 	        },
					 	        vAxis: {
					 	          title: '토양습도'
					 	        },
					 	        backgroundColor: '#ffffff'
					 	      };
					 	
					 	      var chart = new google.visualization.LineChart(document.getElementById('chart_soil_hum'));
					 	      chart.draw(data, options);
                         /* --------------------토양 습도 그래프 그리기 끝 ----------------- */                                                  
                      }else{
                         alert("fail");
                      }
                }
	          });//ajax끝 			
	    }
	    </script>
				  
		<!--토양 산성도-->
		<script type="text/javascript">
		google.charts.load('current', {packages: ['corechart', 'line']});
		google.charts.setOnLoadCallback(drawBackgroundColor);		
		function drawBackgroundColor() {
			var values = []; //dayValueList를 받을 변수
	        var tempValues = [];
	        $.ajax({
                "url" : "/Beliefarm/dayValue/selectDayValue.do",
                "data" : { "projectId" : $("#projectId").val() },
                "dataType" : "JSON",
                "success": function(result) {
                      if(result.code=="OK"){	                          
                         values = result.dayValueList;
                         var count = 0;	                          
                         $.each(values, function(index, value){
                                  tempValues[count] = new Array(2);                                   
                                  tempValues[count][0] = index+1;
                                  tempValues[count][1] = value.avgPh;
                                  count++;       
                         });	
                         /* --------------------토양 산성도 그래프 그리기  ----------------- */
                         var data = new google.visualization.DataTable();
						data.addColumn('number', '날짜');
				        data.addColumn('number', '토양 산성도');					
					    data.addRows(tempValues);
						    var options = {
					        hAxis: {
					          title: '날짜'
					        },
					        vAxis: {
					          title: '토양 산성도'
					        },
					        backgroundColor: '#ffffff'
				       };				
				       var chart = new google.visualization.LineChart(document.getElementById('chart_soil_ph'));
				       chart.draw(data, options);
                         /* --------------------토양 산성도 그래프 그리기 끝 ----------------- */                                                  
                      }else{
                         alert("fail");
                      }
                }
	          });//ajax 끝 
		 }
		</script>   
		<!-- 농사일기 그래프 END  -->	
	
</head>



<body id="body">
		<input type="hidden" id="projectId" value="${prj.id}">
		
		
		<!-- preloader -->
		<div id="preloader">
            <div class="loder-box">
            	<div class="battery"></div>
            </div>
		</div>
		<!-- end preloader -->

        <!--
        Fixed Navigation
        ==================================== -->
        <header id="navigation" class="navbar-inverse navbar-fixed-top animated-header">
            <div class="container">
                <div class="navbar-header">
                   
                    <!-- responsive nav button -->
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
                    </button>
					<!-- /responsive nav button -->
					
					<!-- logo -->
					<div class="navbar-brand">
						<a href="/Beliefarm/project/main.do">
							<img src = "/Beliefarm/resources/assets/img/logo_whi.png"> 
						</a>
					</div1>
					<!-- /logo -->
				</div>		

				<!-- main nav -->
                <nav class="collapse navbar-collapse navbar-right" role="navigation">
                    <ul id="nav" class="nav navbar-nav" >
                        <li><a href="#">검색</a></li>
                        <li><a href="#portfolio">상품보기</a></li>
                        <li><a href="#">빌리되기</a></li>
                        <li><a href="#">빌리팜 소개</a><li>
                        <li><a href="#mypage" class="navbar-login"> 
							<img src="/Beliefarm/resources/assets/img/profile_consumer.png"style="max-width:7%; margin:0 0 5px 0;"><strong>이주현 </strong>님</a>
                        </li>
                    </ul>
                </nav>
				<!-- /main nav -->


				
            </div>
        </header>
        <!--
        End Fixed Navigation
        ==================================== -->
		
		<main class="site-content" role="main">
		
			<!-- Contact section -->
			<section id="contact" style="padding:70px 0 0 0; background-color: rgba(0,158,227, 0.05);">
				<div class="container">
					<div class="row" style="margin: 2% 0;">
						
						<div class="text-center wow animated fadeInDown" style="margin-bottom: 3%;">
							<h1 style="color: rgba(0, 0, 0, 0.85);"><b>${prj.title }</b></h1>
							<p>${prj.farmer.user.name } 빌리의 펀드<p>
						</div>
						
						
						<div class="col-xs-12 col-md-8 contact-form wow animated fadeInLeft">
							<div>
								<img src="${prj.image}" style="max-width: 100%; height: auto;">
							</div>
						</div>
						
						<div class="col-xs-6 col-md-4 wow animated fadeInRight">
								<ul style="list-style:none; padding:10px;">
									<li>
										<div>
											<h2><fmt:formatNumber value="${prj.collectedMoney}" pattern="#,###"/>원</h2>
											<h5>목표 <fmt:formatNumber value="${prj.goal}" pattern="#,###"/>원 중 ${prj.achievedRate }% 모임</h5> 
											
										</div>
									</li>
									<li>
										<div>
											<h2>${prj.rest}일</h2>
											<h5>남은 기간</h5> 
										</div>
									</li>
									<li>
										<div>
											<h2>${prj.investors}</h2>
											<h5>투자 수</h5> 
										</div>
									</li>
								</ul>

							<button type="submit" id="submit" class="col-xs-12 col-sm-12 btn btn-blue btn-effect" onClick="location.href='/Beliefarm/supportProject/showForm.do?projectId=${prj.id}'">함께하기</button>
						
							
							<div class="col-xs-6 col-md-4" 
								 style="background-color:rgba(0,0,0,0.06); height:60px; width:100%; margin-top:2%; border-radius:1px; text-align:center;  ">
								<!--빌리 계정으로 이동-->
								<a href="#"> <h5><b>${prj.farmer.user.name } 빌리</h5> </a>
								<h6>${prj.farmer.farmAddress} ${prj.farmer.crop } 전문 농장</h6>

							</div>
						</div>
			
					</div>

				</div>
		<div class = "container" >
			<div class ="row" >
        		<div class="col-xs-12 col-sm-6" >
	                <nav class="collapse navbar-collapse navbar-left" role="navigation" >
	                		<div class="cursor-point">
	                    <ul id="nav" class="nav navbar-nav" >
	                        <li id="storyBtn"><a onclick="storyShow();" > 소개 </a></li>
	                        <li id="diaryBtn"><a onclick="diaryShow();"> 농사 일지 </a></li>
	                        <li id="qNaBtn">  <a onclick="qNaShow();"> 문의 </a></li>
	                     </ul>
	                     </div>
	               </nav>
	           </div>
	           </div>
	        </div>
			</section>
				
			
		<section id="contact" >
				<div class="container" style="padding: 20px 0;">				
					<div class="row">	
					
						<!-- 소개 영역 -->
						<div class="col-xs-12 col-md-8 contact-form wow animated fadeInLeft" id="story">
								<div>
								<br>
								<h4 style="color: rgba(0,0,0, 0.6);"><b>1. 하고자 하는 일</h4>
									<h5><br>딸기가 좋아 일년 내내 딸기를 먹고 싶어서 딸기 농사를 시작하였습니다. 
			                           <br>수원에 자리잡은 딸기하우스에서 사계절을 딸기를 위해 보냅니다. 
			                           <br>딸기가 가장 생생하고 맛있는 환경을 유지하고 있습니다. 
			                           <br>
			                           <br> 투자금은 이렇게 쓰려고 합니다.
			                           <br> *  해충퇴치를 위한 천적구입비  :  살충제가 아닌 천적을 이용해 해충을 잡습니다.
			                           <br><br>
									</h5>
									<img src="/Beliefarm/resources/assets/img/slider/strawberry.jpg" style="max-width: 500px; height:auto;">
									<br><br>
									
						<br>			
						<h4 style="color: rgba(0,0,0, 0.6);"><b>2. 상품의 특징</h4>
                           <h5>
                           <br> < 땅에 귀기울이며 짓는 농사 >
                           <br>작물이 주인이 되는 농사를 짓습니다.
                           <br>농사만 보고 살아온 삶을 살아온 부모님의 농사법을 이어받아,
                           <br>이주현 빌리의 농사법은 바로, <b>땅의 말을 알아듣는 것<b>입니다. 
                           <br>거창해 보이지만 들여다보면 간단합니다. 
                           <br>사람이 일방적으로 땅에게 작물에게 주는 것이 아니라, 
                           <br>상태에 따라 작물에게<b> ‘물 먹을래? 밥 먹었니?’</b> 물어보며 농사짓는 것이지요. 
                           <br>농사는 농부가 짓는 것이 아니라 땅이 짓는 것이 진짜 농사라 생각하는 빌리가 농사짓습니다
                           <br>
                           <br> < 딸기 액비로 키우는 딸기 >
                           <br>
                           <br>딸기가 열매가 익어가기 시작하면 보통의 과일처럼 작은 것들을 잘라내는 과정을 거칩니다. 
                           <br>이 과정에서 떨궈낸 딸기들을 잘게 갈아 포대에 넣어 원액을 뽑아냅니다. 
                           <br>그리고 이 액을 숙성시켜 딸기를 심기 전 땅에 뿌려줍니다, 
                           <br>한창 커가던 열매들이 머금고 있던 성장호르몬의 원액을 그대로 전해 잘 크도록 도와줍니다. 
                           <br>딸기를 심기 전 땅에 소독약을 뿌리는 방법대신 땅에 힘을 키우는 방법을 택했습니다.
                           <br>
                           <br> < 첫맛은 달고 끝 맛은 새콤한 딸기가 좋아 딸기  >
                           <br> 죽향딸기는 단단함 특징인 품종과 당도와 향이 강한 품종의 딸기를 교배하여 만들어낸 품종입니다. 
                           <br> 첫 맛은 딸기의 진한 향과 함께 입안에 달큰함이 퍼집니다. 끝 맛은 새큼해 먹고 나면,입안이 깔끔합니다.
                           <br> 드셔보면 입안 가득 느껴지는 딸기가 좋아 딸기의 맛에 반하실 겁니다. 
                           </h5>
                           <img src="" style="max-height: 500px; width:auto;">

                        <br>
                        <br>
                        <h4 style="color: rgba(0,0,0, 0.6);"><b>3. 빌리이야기</h4>
                           <h5>
                              <br>딸기 농사를 지은 지 5년. 
                           <br>농부의 딸로 태어나, 다른 길을 찾기도 했지만 결국 딸기 농사로 돌아왔습니다. 
                           </h5>
                           <img src="/Beliefarm/resources/assets/img/too/circlegooma.jpg" style="max-height: 500px; width:auto;">
                           <h6>박정우 빌리의 마스코트 귀여운 고슴도치입니다.</h6>
                        <br>
                        <br>
                        
                        <h4 style="color: rgba(0,0,0, 0.6);"><b>4. 투자 상환 계획</h4>
                           <h5>
                           < 리워드 : 딸기가 좋아 딸기 >
                           <br>
                           <br> 1. 자연재배 딸기(육보) 1kg x 1box + 배송              :   24,000 원  
                           <br> 2. 자연재배 딸기(육보) 2kg x 1box + 배송              :   44,000 원
                           <br> 3. 무첨가 자연재배 딸기잼 500g + 배송				   :   20,000 원
                           <br>
                           <br>※ 첫 발송 : 12월 10일  
                           <br>※ 1박스(kg)은 60개의 딸기가 들어갑니다.
                           <br>※ 크기는 1차 선별을 거쳤으나, 무선별을 기준으로 합니다. 

                           </h5>
                           <img src="" style="max-height: 500px; width:auto;">
                           
                        <br>
									
									
									
									<br><br><br><br>

									<!-- 
									<h6>딸기가 좋아 딸기</h6>
								<br>	
								<h4 style="color: rgba(0,0,0, 0.6);"><b>2. 상품의 특징</h4>
									<h5>마트에 가면 흔히 볼 수 있는 토마토를 한 달 전부터 기다렸다 먹는 사람들이 있습니다. 
									‘왜 기다렸다 먹을까?’에서 ‘이래서 기다렸다 먹는구나!’로 생각을 바꾸게 해준, 기똥찬, 기특한 토마토 ‘기토’를 소개합니다.
									</h5>
									<img src="/Beliefarm/resources/assets/img/too/gooha.jpg" style="max-height: 500px; width:auto;">
									<h6>구하~</h6>
								<br>
								
								
								<h4 style="color: rgba(0,0,0, 0.6);"><b>3. 빌리이야기</h4>
									<h5>마트에 가면 흔히 볼 수 있는 토마토를 한 달 전부터 기다렸다 먹는 사람들이 있습니다. 
									‘왜 기다렸다 먹을까?’에서 ‘이래서 기다렸다 먹는구나!’로 생각을 바꾸게 해준, 기똥찬, 기특한 토마토 ‘기토’를 소개합니다.
									</h5>
									<img src="/Beliefarm/resources/assets/img/too/circlegooma.jpg" style="max-height: 500px; width:auto;">
									<h6>이주현 빌리입니다.</h6>
								<br>
								<h4 style="color: rgba(0,0,0, 0.6);"><b>4. 투자 상환 계획</h4>
									<h5>마트에 가면 흔히 볼 수 있는 토마토를 한 달 전부터 기다렸다 먹는 사람들이 있습니다. 
									‘왜 기다렸다 먹을까?’에서 ‘이래서 기다렸다 먹는구나!’로 생각을 바꾸게 해준, 기똥찬, 기특한 토마토 ‘기토’를 소개합니다.
									</h5>
									<img src="/Beliefarm/resources/assets/img/too/fakegooma.jpg" style="max-height: 500px; width:auto;">
									<h6>캘리포니아사는 구마..</h6>
								<br>
								<h4 style="color: rgba(0,0,0, 0.6);"><b>5. 하고 싶은 말</h4>
									<h5>마트에 가면 흔히 볼 수 있는 토마토를 한 달 전부터 기다렸다 먹는 사람들이 있습니다. 
									‘왜 기다렸다 먹을까?’에서 ‘이래서 기다렸다 먹는구나!’로 생각을 바꾸게 해준, 기똥찬, 기특한 토마토 ‘기토’를 소개합니다.
									</h5>
									<img src="/Beliefarm/resources/assets/img/too/gooha.jpg" style="max-height: 500px; width:auto;">
									<h6>구바~</h6>
								<br>
								 -->
								</div>
						</div>
						<!-- 소개 영역 END -->
						
						<!-- 농사일기 영역 -->
						<div class="col-xs-12 col-md-8 contact-form wow animated fadeInLeft" id="diary">
								<!-- 
								<div>
								<br>
									농사일기 영역~ <br>
									<c:forEach var="diaryList" items="${prj.diaries }">
											${diaryList.contents  } <br>
									</c:forEach>
									<Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br>
									
								<br>								
								</div>
								-->
								
							<!-- 이모티콘 section -->
							<section id ="contact">
								<div class="container" style="padding: 20px 0;">
									<div class="row">
									    
				
								<div class="container">
									<div class="row">
									
										<div class="sec-title text-center">
											<h3 class="wow animated fadeInDown">농산물이 건강하게 자라고 있는지 확인하세요!</h3>
										</div>
										
										<div class="col-md-3 col-sm-6 col-xs-12 text-center wow animated zoomIn">
											<div class="service-item">
											    <h href = #><img src="/Beliefarm/resources/assets/img/good.png"></a>
												<h3>대기 온도</h3>
												<p>  </p>														
											</div>
										</div>
									
										<div class="col-md-3 col-sm-6 col-xs-12 text-center wow animated zoomIn" data-wow-delay="0.3s">
											<div class="service-item">
											    <img src="/Beliefarm/resources/assets/img/good.png">
												<h3>대기 습도</h3>
												<p>  </p>
											</div>
										</div>
									
										<div class="col-md-3 col-sm-6 col-xs-12 text-center wow animated zoomIn" data-wow-delay="0.6s">
											<div class="service-item">
											    <img src="/Beliefarm/resources/assets/img/bad.png">
												<h3>토양 습도</h3>
												<p>   </p>
											</div>
										</div>
									
										<div class="col-md-3 col-sm-6 col-xs-12 text-center wow animated zoomIn" data-wow-delay="0.9s">
											<div class="service-item">
											    <img src="/Beliefarm/resources/assets/img/nosignal.png">
												<h3>농약, 화학비료 감시</h3>
												<p>토양 산성도를 측정을 통해 농약과 화학비료 사용을 감시하고 있습니다.   </p>							
											</div>
										</div>
																				
									</div>					
								</div>
								
									</div>
								</div>							
							</section>
							
							
					<!-- 빌리의 농사 소식 section -->	
					
					<section>
						<div class="container">
							<div class="row">
					
						<div class="sec-title text-center wow animated fadeInDown">
							<br>
							<h3>빌리의 농사 소식</h3>
						</div>

						<ul class="project-wrapper wow animated fadeInUp">
							<li class="portfolio-item">
								<h5><b>D-58</b> 2017.11.12.일 </h5>
								<img src="/Beliefarm/resources/assets/img/sby_flower.jpg" class="img-responsive" alt="ppicture of the product">
								<h6>딸기가 꽃을 피웠어요. 예쁜가요?</h6>
								<br>
							</li>
							
							<li class="portfolio-item">
								<h5><b>D-45</b> 2017.11.24.금 </h5>
								<img src="/Beliefarm/resources/assets/img/sby_berry.jpg" class="img-responsive" alt="ppicture of the product">
								<h6>첫 열매를 맺었어요!</h6>
								<br>
							</li>
							
							<li class="portfolio-item">
								<h5><b>D-39</b> 2017.11.30.목 </h5>
								<img src="/Beliefarm/resources/assets/img/sby_drop.jpg" class="img-responsive" alt="ppicture of the product">
								<h6>오늘은 열매를 솎아줬어요. <br>조금은 아쉽지만 이렇게 솎아주면 <br>더 알찬 딸기로 자랄 수 있어요.</h6>
							</li>
							
							<li class="portfolio-item">
								<h5><b>D-29</b> 2017.12.10.목 </h5>
								<img src="/Beliefarm/resources/assets/img/sby_1st.jpg" class="img-responsive" alt="ppicture of the product">
								<h6>새빨간 딸기가 보이나요? <br>너무 예쁘죠! <br> 열심히 자라고 있습니다.</h6>
								
							</li>
							

						</ul>
						<br>
						<br>
					</div>
			</section>
			
			<section>
					<div class = "container">
						<div class = "row">
							<div class="sec-title text-center ">
							<br>
							<h3>농사를 그래프로 확인하세요</h3>
							<br>
							<h4><b>실내 온도</h4>
							<h5>적정 온도는 20 ~ 25도 입니다. </h5>
							<div id="chart_div" style="max-height: 500px; width:auto;"></div>
							<br>
							<br>
							<h4><b>대기 습도</h4>
							<h5>적정 습도는 30 ~ 35 입니다. </h5>
							<div id="chart_air_hum" style="max-height: 500px; width:auto;"></div>
							<br>
							<br>
							<h4><b>토양 습도</h4>
							<h5>적정 토양 수분량은 50 ~ 55 입니다. <br>물을 주었을 때 습도가 급격하게 올라갈 수 있습니다.</h5>
							<div id="chart_soil_hum" style="max-height: 500px; width:auto;"></div>
							<br>
							<br>
							<h4><b>토양 산성도</h4>
							<h5>토양 산성도를 측정을 통해 농약과 화학비료 사용을 감시하고 있습니다. <br> 딸기의 적정 산성도는 약산성(5.5 ~ 6.0ph)입니다. </h5>
							<div id="chart_soil_ph" style="max-height: 500px; width:auto;"></div>
						</div>


					</div>
					</div>
		
		
			</section>
							
						</div>
						<!-- 농사 일기 영역 END -->
						
						
						<!-- 문의 영역 -->
						<div class="col-xs-12 col-md-8 contact-form wow animated fadeInLeft" id="qNa">
								<div>
								<br>
									문의영역~
									<Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br>
								<br>
								</div>
						</div>
						<!-- 문의 영역 END -->
						
						
						<!-- 리워드 영역 -->
						<div id="showRewards">
						<c:forEach var="rewardList" items="${prj.rewards }">
						<div class="col-xs-6 col-md-4 wow animated fadeInRight" 	style="background-color:rgba(0,0,0,0.03); margin-top:2%; border-radius:1px; text-align:center;">
							<div style="padding: 10px 0;">
								<h5><b>${rewardList.name  }</h5> 
								<%-- <%
								String tempRewardDetail = (request.getParameter("rewardList")); 
								out.println(tempRewardDetail); %> --%>
								<h6>${rewardList.detail  }</h6>
								<hr>
								<h5><b>${rewardList.price  }원</h5>
								<h6>${rewardList.supportProjectsNum }개 함께함, ${rewardList.number }개 남음  </h6>	
							</div>
						</div>
						</c:forEach>
						</div>
						<!-- 리워드 영역 END -->
			
					</div>
				</div>
			</section>           
        
        
		</main>
		

		
		<footer id="footer">
			<div class="container">
				<div class="row text-center">
					<div class="footer-content">
						<div class="wow animated fadeInDown">
							<address class="contact-details">
								<p><i class="fa fa-pencil"></i>address : 16499 경기도 수원시 영통구 월드컵로 206 아주대학교</p>
								<p><i class="fa fa-phone"></i>Phone: (031) 219 - 1234 </p>
								<p><i class="fa fa-envelope"></i>beliemanager@beliefarm.com</p>
							</address>
						</div>
						</div>
						<p>믿고 먹을 수 있는 농산물 크라우드 펀딩 서비스</p>
						<p>빌리팜 </p>
					</div>
				</div>
			</div>
		</footer>
		
		<!-- Essential jQuery Plugins
		================================================== -->
		<!-- Main jQuery -->
        <script src="/Beliefarm/resources/assets/js/jquery-1.11.1.min.js"></script>
		<!-- Twitter Bootstrap -->
        <script src="/Beliefarm/resources/assets/js/bootstrap.min.js"></script>
		<!-- Single Page Nav -->
        <script src="/Beliefarm/resources/assets/js/jquery.singlePageNav.min.js"></script>
		<!-- jquery.fancybox.pack -->
        <script src="/Beliefarm/resources/assets/js/jquery.fancybox.pack.js"></script>
		<!-- Google Map API -->
		<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
		<!-- Owl Carousel -->
        <script src="/Beliefarm/resources/assets/js/owl.carousel.min.js"></script>
        <!-- jquery easing -->
        <script src="/Beliefarm/resources/assets/js/jquery.easing.min.js"></script>
        <!-- Fullscreen slider -->
        <script src="/Beliefarm/resources/assets/js/jquery.slitslider.js"></script>
        <script src="/Beliefarm/resources/assets/js/jquery.ba-cond.min.js"></script>
		<!-- onscroll animation -->
        <script src="/Beliefarm/resources/assets/js/wow.min.js"></script>
		<!-- Custom Functions -->
        <script src="/Beliefarm/resources/assets/js/main.js"></script>
</body>
</html>