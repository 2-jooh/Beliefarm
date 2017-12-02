<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
				<a href="/Beliefarm/project/main.do">
					<img src = "/Beliefarm/resources/assets/img/logo_whi.png" > 
				</a>
			 </div>
			<!-- /logo -->
	

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
           </div>
        </header>
        <!--
        End Fixed Navigation
        ==================================== -->
		
		
		
		<main class="site-content" role="main">
		
        <!--
        Home Slider
        ==================================== -->
			
		<section id="home-slider">
            <div id="slider" class="sl-slider-wrapper">

				<div class="sl-slider">
				
					<div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="-25" data-slice2-rotation="-25" data-slice1-scale="2" data-slice2-scale="2">

						<div class="bg-img bg-img-1"></div>

						<div class="slide-caption">
                            <div class="caption-content">
                                <h2 class="animated fadeInDown">믿을 수 있는 먹거리</h2>
                                <span class="animated fadeInDown">농산물들이 자라는 모습을 확인하고 드세요!</span>
                                <a href="#" class="btn btn-blue btn-effect">상품보기</a>
                            </div>
                        </div>
						
					</div>
					
					<div class="sl-slide" data-orientation="vertical" data-slice1-rotation="10" data-slice2-rotation="-15" data-slice1-scale="1.5" data-slice2-scale="1.5">
					
						<div class="bg-img bg-img-2"></div>
						<div class="slide-caption">
                            <div class="caption-content">
                                <h2>딸기가 좋아 딸기</h2>
                                <span>이주현 빌리가 정성스럽게 기른 딸기를 맛보시겠어요?</span>
                                <a href="#" class="btn btn-blue btn-effect">보러가기</a>
                            </div>
                        </div>
						
					</div>
					
					<div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="3" data-slice2-rotation="3" data-slice1-scale="2" data-slice2-scale="1">
						
						<div class="bg-img bg-img-3"></div>
						<div class="slide-caption">
                            <div class="caption-content">
                                <h2>빌리팜과 함께라면</h2>
                                <span> 빌리들은 건강한 농사에 집중하고, <br> 우리는 건강한 농산물을 먹을 수 있습니다. </span>
                                <a href="#" class="btn btn-blue btn-effect">농부되기</a>
                            </div>
                        </div>

					</div>

				</div><!-- /sl-slider -->

                <!-- 
                <nav id="nav-arrows" class="nav-arrows">
                    <span class="nav-arrow-prev">Previous</span>
                    <span class="nav-arrow-next">Next</span>
                </nav>
                -->
                
                <nav id="nav-arrows" class="nav-arrows hidden-xs hidden-sm visible-md visible-lg">
                    <a href="javascript:;" class="sl-prev">
                        <i class="fa fa-angle-left fa-3x"></i>
                    </a>
                    <a href="javascript:;" class="sl-next">
                        <i class="fa fa-angle-right fa-3x"></i>
                    </a>
                </nav>
                

				<nav id="nav-dots" class="nav-dots visible-xs visible-sm hidden-md hidden-lg">
					<span class="nav-dot-current"></span>
					<span></span>
					<span></span>
				</nav>

			</div><!-- /slider-wrapper -->
		</section>
		
        <!--
        End Home SliderEnd
        ==================================== -->



		<!-- =============================== 
		Start portfolio section 				    -->
		
		
			<section id="portfolio_hot">
				<div class="container">
					<div class="row">
					
						<div class="sec-title text-center wow animated fadeInDown">
							<h3>인기있는 상품</h3>
						</div>

						<ul class="project-wrapper wow animated fadeInUp">
							<c:forEach var="prjList" items="${prjList }" begin="0" end="3">
								<li class="portfolio-item">
									<a href="/Beliefarm/project/projectDetail.do?projectId=${prjList.id}"> <!--딸기 상품 페이지로 연결-->
									<img src="${prjList.image }" class="img-responsive" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat">
									<div style="height:32px">
										<h5>${prjList.title }</h5>
									</div>
									<h6 style="color:grey;">${prjList.farmer.user.name } 빌리 </h6>
	
									<span class="iGraph">
										<span class="gBar">
											<span class="gAction" style="width:${prjList.achievedRate }%" ></span>
										</span>
										<span class="gPercent"><strong>${prjList.achievedRate }</strong>%</span>
									</span>
	
									<figcaption class="mask">									
										<p><center> <B><fmt:formatNumber value="${prjList.collectedMoney }" pattern="#,###"/></B>원  <B>${prjList.investors }</B> 명  <B>${prjList.rest }</B>일 </p>
									</figcaption>
									</a>
								</li>
							</c:forEach>	
						</ul>
					</div>
				</div>
			</section>

			<section id="portfolio_new">
				<div class="container">
					<div class="row">
					
						<div class="sec-title text-center wow animated fadeInDown">
							<h3>새로운 상품</h3>
						</div>

						<ul class="project-wrapper wow animated fadeInUp">
							<c:forEach var="prjList" items="${prjList }" begin="4" end="7">
								<li class="portfolio-item">
									<a href="/Beliefarm/project/projectDetail.do?projectId=${prjList.id}"> <!--딸기 상품 페이지로 연결-->
									<img src="${prjList.image }" class="img-responsive" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat">
									<div style="height:32px">
										<h5>${prjList.title }</h5>
									</div>
									<h6 style="color:grey;">${prjList.farmer.user.name } 빌리</h6>
	
									<span class="iGraph">
										<span class="gBar">
											<span class="gAction" style="width:${prjList.achievedRate }%" ></span>
										</span>
										<span class="gPercent"><strong>${prjList.achievedRate }</strong>%</span>
									</span>
	
									<figcaption class="mask">
										<p><center> <B>${prjList.collectedMoney }</B>원  <B>${prjList.investors }</B> 명  <B>${prjList.rest }</B>일 </p>
									</figcaption>
									</a>
								</li>
							</c:forEach>	
						</ul>
					</div>
				</div>
			</section>
						
		<section id="portfolio_finishSoon">
				<div class="container">
					<div class="row">
					
						<div class="sec-title text-center wow animated fadeInDown">
							<h3>마감 앞둔 상품</h3>
						</div>

						<ul class="project-wrapper wow animated fadeInUp">
							<c:forEach var="prjList" items="${prjList }" begin="8" end="11">
								<li class="portfolio-item">
									<a href="/Beliefarm/project/projectDetail.do?projectId=${prjList.id}"> <!--딸기 상품 페이지로 연결-->
									<img src="${prjList.image }" class="img-responsive" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat">
									<div style="height:32px">
										<h5>${prjList.title }</h5>
									</div>
									<h6 style="color:grey;">${prjList.farmer.user.name } 빌리</h6>
	
									<span class="iGraph">
										<span class="gBar">
											<span class="gAction" style="width:${prjList.achievedRate }%" ></span>
										</span>
										<span class="gPercent"><strong>${prjList.achievedRate }</strong>%</span>
									</span>
	
									<figcaption class="mask">
										<p><center> <B>${prjList.collectedMoney }</B>원  <B>${prjList.investors }</B> 명  <B> ${prjList.rest }</B>일 </p>
									</figcaption>
									</a>
								</li>
							</c:forEach>	
						</ul>
					</div>
				</div>
		</section>
		
		<!--
        End Porfolio Section
        ==================================== -->		
        

		
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
        <script src="js/jquery.ba-cond.min.js"></script>
		<!-- onscroll animation -->
        <script src="/Beliefarm/resources/assets/js/wow.min.js"></script>
		<!-- Custom Functions -->
        <script src="/Beliefarm/resources/assets/js/main.js"></script>
    </body>
</html>