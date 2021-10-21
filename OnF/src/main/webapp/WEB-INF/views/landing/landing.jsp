<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link rel="icon" href="landing/img/favicon.png" type="landing/image/png" />
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.1/examples/carousel/">
<title>ON&OFF</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="landing_style/css/bootstrap.css" />
<link rel="stylesheet" href="landing_style/css/flaticon.css" />
<link rel="stylesheet" href="landing_style/css/themify-icons.css" />
<link rel="stylesheet" href="landing_style/vendors/owl-carousel/owl.carousel.min.css" />
<link rel="stylesheet" href="landing_style/vendors/nice-select/css/nice-select.css" />
<link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/headers/">


<!-- main css -->
<link rel="stylesheet" href="landing_style/css/style.css" />

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>

<!-- Custom styles for this template -->
<link href="landing_style/css/carousel.css" rel="stylesheet">

</head>

<body style="padding-bottom: 0px; padding-top: 0px;">
	<!--================ Start Header Menu Area =================-->
	<header class="header_area">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light w-auto">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h " href="${root}landing/landing.jsp"
						style="font-size: 25pt; color:#000"><strong>ON&OFF</strong></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset"
						id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto w-auto">
							<li class="nav-item"><a href="#"
								class="nav-link dropdown-toggle" data-toggle="dropdown"
								role="button" aria-haspopup="true" aria-expanded="false">상품소개</a>
							</li>
							<li class="nav-item"><a href="#"
								class="nav-link dropdown-toggle" data-toggle="dropdown"
								role="button" aria-haspopup="true" aria-expanded="false">서비스</a>
							</li>
							<li class="nav-item"><a href="#"
								class="nav-link dropdown-toggle" data-toggle="dropdown"
								role="button" aria-haspopup="true" aria-expanded="false">고객센터</a>
							</li>
							<li class="nav-item mt-3" style="padding-top: 3px;">
								<button type="button" class="btn btn-outline-dark" onclick="location.href='${root}user/login'">LOGIN</button>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<!--================ End Header Menu Area =================-->

	<!--================ Start Home Banner Area =================-->
	<section class="home_banner_area">
		<div class="banner_inner">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="banner_content text-start pt-5"	>
							<p class="text-uppercase" >20211001 랜딩페이지 구현_2차</p>
							<h2 class="text-uppercase mt-4 mb-5">We Help Power <br/>
							Millions Of Businesses <br />in 100+ Countries</h2>
							<div>
								<a href="#" class="primary-btn btn-lg">ON&OFF 시작하기</a>
							</div>	
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ End Home Banner Area =================-->

	<!--================ Start Feature Area =================-->
	<section class="feature_area section_gap_top my-5" style="background-color:">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-5">
					<div class="main_title">
						<h2 class="mb-3">Project On & Off</h2>
						<p>Team Paisy</p>
					</div>
				</div>
			</div>
			<div class="row ">
				<div class="col-lg-4 col-md-6">
					<div class="single_feature">
						<div class="icon">
							<span class="flaticon-student"></span>
						</div>
						<div class="desc">
							<h4 class="mt-3 mb-2">기능1</h4>
							<p>역할 : 뭔가 함</p>
							<p>역할2 : 뭔가 함</p>
							<p>역할3 : 뭔가 함</p>
							<p>역할4 : 뭔가 함 좀만 길게 써봐야 이게 가운데 정렬인지 알 수 있을 듯ㄴ</p>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6">
					<div class="single_feature">
						<div class="icon">
							<span class="flaticon-book"></span>
						</div>
						<div class="desc">
							<h4 class="mt-3 mb-2">기능1</h4>
							<p>역할 : 뭔가 함</p>
							<p>역할2 : 뭔가 함</p>
							<p>역할3 : 뭔가 함</p>
							<p>역할4 : 뭔가 함 좀만 길게 써봐야 이게 가운데 정렬인지 알 수 있을 듯ㄴ</p>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6">
					<div class="single_feature">
						<div class="icon">
							<span class="flaticon-earth"></span>
						</div>
						<div class="desc">
							<h4 class="mt-3 mb-2">기능1</h4>
							<p>역할 : 뭔가 함</p>
							<p>역할2 : 뭔가 함</p>
							<p>역할3 : 뭔가 함</p>
							<p>역할4 : 뭔가 함 좀만 길게 써봐야 이게 가운데 정렬인지 알 수 있을 듯ㄴ</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single_feature">
						<div class="icon">
							<span class="flaticon-earth"></span>
						</div>
						<div class="desc">
							<h4 class="mt-3 mb-2">기능1</h4>
							<p>역할 : 뭔가 함</p>
							<p>역할2 : 뭔가 함</p>
							<p>역할3 : 뭔가 함</p>
							<p>역할4 : 뭔가 함 좀만 길게 써봐야 이게 가운데 정렬인지 알 수 있을 듯ㄴ</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single_feature">
						<div class="icon">
							<span class="flaticon-earth"></span>
						</div>
						<div class="desc">
							<h4 class="mt-3 mb-2">기능1</h4>
							<p>역할 : 뭔가 함</p>
							<p>역할2 : 뭔가 함</p>
							<p>역할3 : 뭔가 함</p>
							<p>역할4 : 뭔가 함 좀만 길게 써봐야 이게 가운데 정렬인지 알 수 있을 듯ㄴ</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single_feature">
						<div class="icon">
							<span class="flaticon-earth"></span>
						</div>
						<div class="desc">
							<h4 class="mt-3 mb-2">기능1</h4>
							<p>역할 : 뭔가 함</p>
							<p>역할2 : 뭔가 함</p>
							<p>역할3 : 뭔가 함</p>
							<p>역할4 : 뭔가 함 좀만 길게 써봐야 이게 가운데 정렬인지 알 수 있을 듯ㄴ</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ End Feature Area =================-->
	
	<!--================ Start Popular Courses Area =================-->
	<section class="feature_area section_gap_top my-5">
		<div class="row featurette">
			<div class="col-md-1"></div>
			<div class="col-md-4">
				<h2 class="featurette-heading px-5">
					First featurette heading. <span class="text-muted">It’ll
						blow your mind.</span>
				</h2>
				<p class="lead px-5">Some great placeholder content for the first
					featurette here. Imagine some exciting prose here.</p>
			</div>
			<div class="col-md-6">
				<img src="landing_style/img/courses/cup.jpg" alt="" width="100%" height="600px"/>			
			</div>
			<div class="col-md-1"></div>
		</div>

		<hr class="featurette-divider my-5">
		
		<div class="row featurette">
			<div class="col-md-1"></div>
			<div class="col-md-4 order-md-2">
				<h2 class="featurette-heading px-5">
					Oh yeah, it’s that good. <br />
					<span class="text-muted">See for
						yourself.</span>
				</h2>
				<p class="lead px-5">Another featurette? Of course. More placeholder
					content here to give you an idea of how this layout would work with
					some actual real-world content in place.</p>
			</div>
			<div class="col-md-6 order-md-1">
				<img src="landing_style/img/courses/cup.jpg" alt="" width="100%" height="600px"/>
			</div>
		</div>
		<div class="col-md-1"></div>
	</section>
	<!--================ End Popular Courses Area =================-->

	<!--================ Start Testimonial Area =================-->
	<div class="testimonial_area section_gap">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-5">
					<div class="main_title">
						<h2 class="mb-3">Client say about me</h2>
						<p>Replenish man have thing gathering lights yielding shall
							you</p>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="testi_slider owl-carousel">
					<div class="testi_item">
						<div class="row">
							<div class="col-lg-4 col-md-6">
								<img src="landing_style/img/testimonials/t1.jpg" alt="" />
							</div>
							<div class="col-lg-8">
								<div class="testi_text">
									<h4>Elite Martin</h4>
									<p>Him, made can't called over won't there on divide there
										male fish beast own his day third seed sixth seas unto. Saw
										from</p>
								</div>
							</div>
						</div>
					</div>
					<div class="testi_item">
						<div class="row">
							<div class="col-lg-4 col-md-6">
								<img src="landing_style/img/testimonials/t2.jpg" alt="" />
							</div>
							<div class="col-lg-8">
								<div class="testi_text">
									<h4>Davil Saden</h4>
									<p>Him, made can't called over won't there on divide there
										male fish beast own his day third seed sixth seas unto. Saw
										from</p>
								</div>
							</div>
						</div>
					</div>
					<div class="testi_item">
						<div class="row">
							<div class="col-lg-4 col-md-6">
								<img src="landing_style/img/testimonials/t1.jpg" alt="" />
							</div>
							<div class="col-lg-8">
								<div class="testi_text">
									<h4>Elite Martin</h4>
									<p>Him, made can't called over won't there on divide there
										male fish beast own his day third seed sixth seas unto. Saw
										from</p>
								</div>
							</div>
						</div>
					</div>
					<div class="testi_item">
						<div class="row">
							<div class="col-lg-4 col-md-6">
								<img src="landing_style/img/testimonials/t2.jpg" alt="" />
							</div>
							<div class="col-lg-8">
								<div class="testi_text">
									<h4>Davil Saden</h4>
									<p>Him, made can't called over won't there on divide there
										male fish beast own his day third seed sixth seas unto. Saw
										from</p>
								</div>
							</div>
						</div>
					</div>
					<div class="testi_item">
						<div class="row">
							<div class="col-lg-4 col-md-6">
								<img src="landing_style/img/testimonials/t1.jpg" alt="" />
							</div>
							<div class="col-lg-8">
								<div class="testi_text">
									<h4>Elite Martin</h4>
									<p>Him, made can't called over won't there on divide there
										male fish beast own his day third seed sixth seas unto. Saw
										from</p>
								</div>
							</div>
						</div>
					</div>
					<div class="testi_item">
						<div class="row">
							<div class="col-lg-4 col-md-6">
								<img src="landing_style/img/testimonials/t2.jpg" alt="" />
							</div>
							<div class="col-lg-8">
								<div class="testi_text">
									<h4>Davil Saden</h4>
									<p>Him, made can't called over won't there on divide there
										male fish beast own his day third seed sixth seas unto. Saw
										from</p>
								</div>
							</div>
						</div>
					</div>
					<div class="testi_item">
						<div class="row">
							<div class="col-lg-4 col-md-6">
								<img src="landing_style/img/testimonials/t2.jpg" alt="" />
							</div>
							<div class="col-lg-8">
								<div class="testi_text">
									<h4>Davil Saden</h4>
									<p>Him, made can't called over won't there on divide there
										male fish beast own his day third seed sixth seas unto. Saw
										from</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================ End Testimonial Area =================-->

	<!--================ Start footer Area  =================-->
	 <footer class="footer-area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 single-footer-widget">
					<h4>Top Products</h4>
					<ul>
						<li><a href="#">Managed Website</a></li>
						<li><a href="#">Manage Reputation</a></li>
						<li><a href="#">Power Tools</a></li>
						<li><a href="#">Marketing Service</a></li>
					</ul>
				</div>
				<div class="col-lg-3 col-md-6 single-footer-widget">
					<h4>Quick Links</h4>
					<ul>
						<li><a href="#">Jobs</a></li>
						<li><a href="#">Brand Assets</a></li>
						<li><a href="#">Investor Relations</a></li>
						<li><a href="#">Terms of Service</a></li>
					</ul>
				</div>
				<div class="col-lg-3 col-md-6 single-footer-widget">
					<h4>Features</h4>
					<ul>
						<li><a href="#">Jobs</a></li>
						<li><a href="#">Brand Assets</a></li>
						<li><a href="#">Investor Relations</a></li>
						<li><a href="#">Terms of Service</a></li>
					</ul>
				</div>
				<div class="col-lg-3 col-md-6 single-footer-widget">
					<h4>Resources</h4>
					<ul>
						<li><a href="#">Guides</a></li>
						<li><a href="#">Research</a></li>
						<li><a href="#">Experts</a></li>
						<li><a href="#">Agencies</a></li>
					</ul>
				</div>
			</div>
			<div class="row footer-bottom d-flex justify-content-between">
				<p class="col-lg-8 col-sm-12 footer-text m-0 text-white">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
	Copyright &copy;
	<script>
		document.write(new Date().getFullYear());
	</script>
	All rights reserved | This template is made with
	<i class="ti-heart" aria-hidden="true"></i> by
	<a href="https://colorlib.com" target="_blank">Colorlib</a>
	<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
	</p>
	</div>
	</div>
	</footer>
	<!--================ End footer Area  =================-->

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="landing_style/js/jquery-3.2.1.min.js"></script>
	<script src="landing_style/js/popper.js"></script>
	<script src="landing_style/js/bootstrap.min.js"></script>
	<script src="landing_style/vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="landing_style/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="landing_style/js/owl-carousel-thumb.min.js"></script>
	<script src="landing_style/js/jquery.ajaxchimp.min.js"></script>
	<script src="landing_style/js/mail-script.js"></script>
	<!--gmaps Js-->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="landing_style/js/gmaps.min.js"></script>
	<script src="landing_style/js/theme.js"></script>

</body>
</html>
