<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html lang="en" class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html lang="en" class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html lang="en" class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
    <head>
    	<!-- meta character set -->
        <meta charset="utf-8">
		<!-- Always force latest IE rendering engine or request Chrome Frame -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>BelieFarm</title>		
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

		<!-- Modernizer Script for old Browsers -->
        <script src="/Beliefarm/resources/assets/js/modernizr-2.6.2.min.js"></script>
        
        <script type="text/javascript">
	        var rewardId;
	        
	        var showConfirm = function() {
	        	alert("후원이 성공적으로 완료되습니다. 빌리와 함께해주셔서 감사합니다.");
	        	return true;
	        }
	        
	       function getVal(sel)
	       {   
	    	   if(sel.value !="")
	    	   rewardId = sel.value;
	    	   //rewardId = $_POST['reward'];
	    	   console.log(rewardId);
	    	   //optionValue.value = rewardId;
	    		$.ajax({
	    			url : "/Beliefarm/supportProject/selectReward.do",
	    			
	    			data : {
						"rewardId" : rewardId
					},
					type : "post",//왜 GET으로 하면 오류가 나는거지???
					dataType : "json",
	    			async : false,
	    			success : rewardSuccess,
	    			error : function(request,status,error){
	    		        alert("**code = "+ request.status + " ************message = " + request.responseText + " **error = " + error); // 실패 시 처리
	    		       }
	    		});
	    		
	    		 // $('form').submit();
	    	   
	       }
	       
	       var rewardSuccess = function(data) {
	    	   console.log(data.reward.name);
	    	   
	    	   $("#rewardContainer").empty();
	    	   var rowItem = "";
	    	   
	    	   rowItem += 
	    		   
	    		   "<li>"
	    		   +"<div class='list-label col-xs-6'> 리워드 내용</div>"
			       +"<div class='list-value col-xs-6'> "
	    		   +data.reward.detail
	    		   +"</div></li>"
			       
			       +"<li>"
			       +"<div class='list-label col-xs-6'> 리워드 금액</div>"
			       +"<div class='list-value col-xs-6'><strong>"
			       +data.reward.price
			       +"</strong> 원</div></li>"
				
			       +"<li>"
			       +"<div class='list-label col-xs-6'> 배송 예정일</div>"
				   +"<div class='list-value col-xs-6'>"
			       +data.reward.deliveryDate 
			       +"</div><br></li>"
			       
			       
			       +"<input type='hidden' name='rewardId' value='"
			       +data.reward.id
			       +"'>";
   
	    	   $("#rewardContainer").append(rowItem);
	    	   
	       }
	       
	    
	       
	       
	       
        
        </script>

    </head>
	
    <body id="body">

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
						<a href="#body">
							<img src = "/img/logo_whi.png" > 
						</a>
					</div1>
					<!-- /logo -->
				</div>		

				<!-- main nav -->
                <nav class="collapse navbar-collapse navbar-right" role="navigation">
                    <ul id="nav" class="nav navbar-nav" >
                        <li><a href="#">검색</a></li>
                        <li><a href="#portfolio">상품보기</a></li>
                        <li><a href="#">농부되기</a></li>
                        <li><a href="#">빌리팜 소개</a><li>
                        <li><a href="#mypage" class="navbar-login"> 
							<img src="/img/profile_consumer.png"style="max-width:7%; margin:0 0 5px 0;"><strong>이주현 </strong>님</a>
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
		
        <!--
        Home Slider
        ==================================== -->
		
<!-- Price section -->
			<section id="price">
				<div class="container">
					<div class="row">
					
						<div class="sec-title text-center wow animated fadeInDown">
						    <p><br><br></p>
							<h2>빌리후원서 작성</h2>
							<p>빌리가 기른 건강하고 맛있는 농산물을 보내드립니다!</p>
						</div>
						
						<form action="${pageContext.request.contextPath}/supportProject/submitForm.do" method="post" onsubmit="return showConfirm();"><!--폼 수신 서버 페이지 url-->

						<!--상품 및 개수 선택 / 정보 불러오기-->	
    						<div class="col-xs-12 col-md-12 wow animated fadeInUp" data-wow-delay="0.4s">
    							<div class="price-table featured text-center">
    								
    								<div class="value" >
            								<b>${project.title}</b><br>
            								${project.farmer.farmName} 빌리
        							</div>
    								
    								<ul>
    									<li>
    										<div class="list-label col-xs-6"> 선택한 리워드</div>
    									    <div class="list-value col-xs-6">
	    									    <select name="rewards" onchange="getVal(this);" required>
	    									    <option value="">--리워드선택--</option>
	    									    <c:forEach var="reward" items="${rewards}" varStatus="status">
	    								        <option value="${reward.id}" >${reward.name}</option>
	    								        </c:forEach>
    								  			</select>
    								  		</div>
    								  		    <!--input type="hidden" name="rewardId"  -->
    								  			<input type="hidden" name="projectId" value="${projectId}">
    								  	</li>
    								  	<div id="rewardContainer">
    									<li>
    										<div class="list-label col-xs-6"> 리워드 내용</div>
    									    <div class="list-value col-xs-6"> ${reward.detail} </div></li>
    									<li>
    										<div class="list-label col-xs-6"> 리워드 금액</div>
    									    <div class="list-value col-xs-6"><strong>${reward.price}</strong> 원</div></li>
    									<li>
    										<div class="list-label col-xs-6"> 배송 예정일</div>
    									    <div class="list-value col-xs-6"> ${deliveryDate} </div>
    									    <br>
    									    </li>
    									     <input type="hidden" name="projectId" value="${projectId}">
    									  
    									</div>
    								
    									<!--  
    									<li>
    										<div class="list-label col-xs-6"><span style="color:white">최종 결제 금액</span></div>
    									    <div class="list-value col-xs-6"><span style="color:white"><strong>30000</strong> 원</span> </div></li>
    									 -->
									</ul>
								</div>
							</div>
									
						<!--배송-->		
							<div class="col-xs-12 col-md-12 wow animated fadeInUp" data-wow-delay="0.4s">
    							<div class="price-table featured text-center">
									<ul>
										<li>
    										<div class="list-label col-xs-6"> 주문 수량</span></div>
    									    <div class="list-value col-xs-6">
    									    	<input name="ordernum" id="ordernum" type="text" class="input" maxlength="3" size="3"/>개
    									    	</div>
    									    	<br>
    									</li>
    									<li>
    										<div class="list-label col-xs-6">배송주소</div>
    									    <div class="list-value col-xs-6"> 
    									    <input name="address" id="" type="text" class="input" maxlength="30" size="30"/></div>
    									    <br>
    									    </li>
    									    <li></li>
    								</ul>
    							</div>
    						</div>
    						
						<!--결제-->		
							<div class="col-xs-12 col-md-12 wow animated fadeInUp" data-wow-delay="0.4s">
    							<div class="price-table featured text-center">
									<ul>
    								</ul>
    							</div>
    						</div>
    						
    					<!--약관 동의-->	
							<div class="col-xs-12 col-md-12 wow animated fadeInUp" data-wow-delay="0.4s">
    							<div class="price-table featured text-center">
									<ul>
    									<li>
    										<input class="col-xs-2" type="checkbox" name="" value=""/>
    										<p class="col-xs-10" style="text-align: left">빌리팜의 서비스 이용약관과 결제사 정보제공에 동의합니다.<br>
    										빌리팜은 결제처리를 제외한 다른 목적으로 제3자에게 결제정보를 절대 제공하지 않습니다.
    										
    										</p>
    										<br>
    								  	</li>
    									<li>
    										<input class="col-xs-2" type="checkbox" name="" value=""/>
    										<p class="col-xs-10" style="text-align: left">해당 펀드는 [기간모집형] 투자상품으로 투자 즉시 결제되며 투자 리워드가 정해진 배송 일정에 맞춰서 발송됩니다.
    										  빌리팜의 펀드진행방식과 취소환불 규정을 확인했습니다.
    										<br>
    										</p>
    										<br>
    								  	</li>
    								  	<li><p style="text-align: center"><span style="color:white">위의 내용과 같이 결제를 진행합니다.</span></p></li>
    								</ul>

    							</div>
    							
    							
									<div class="price-table featured text-center">
    									<br><button name="btnSubmit" id="btnSubmit" type="submit">빌리와 함께 농사짓기</button>
									</div>
    						</div>
    						
    						    	
    					<form>
					</div>
				</div>
			</section>
			<!-- end Price section -->

		
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