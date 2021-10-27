<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="../assets/images/favicon.png">
<title>Adminmart Template - The Ultimate Multipurpose admin
	template</title>
<!-- This page plugin CSS -->
<link
	href="../assets/extra-libs/datatables.net-bs4/css/dataTables.bootstrap4.css"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="../dist/css/style.min.css" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>

<body>
	<!-- ============================================================== -->
	<!-- Preloader - style you can find in spinners.css -->
	<!-- ============================================================== -->
	<div class="preloader">
		<div class="lds-ripple">
			<div class="lds-pos"></div>
			<div class="lds-pos"></div>
		</div>
	</div>
	<!-- ============================================================== -->
	<!-- Main wrapper - style you can find in pages.scss -->
	<!-- ============================================================== -->
	<div id="main-wrapper" data-theme="light" data-layout="vertical"
		data-navbarbg="skin6" data-sidebartype="full"
		data-sidebar-position="fixed" data-header-position="fixed"
		data-boxed-layout="full">
		<!-- ============================================================== -->
		<!-- Topbar header - style you can find in pages.scss -->
		<!-- ============================================================== -->
		<header class="topbar" data-navbarbg="skin6">
			<nav class="navbar top-navbar navbar-expand-md">
				<div class="navbar-header" data-logobg="skin6">
					<!-- This is for the sidebar toggle which is visible on mobile only -->
					<a class="nav-toggler waves-effect waves-light d-block d-md-none"
						href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
					<!-- ============================================================== -->
					<!-- Logo -->
					<!-- ============================================================== -->
					<div class="navbar-brand">
						<!-- Logo icon -->
						<a href="dept.jsp"> <b class="logo-icon"> <!-- Dark Logo icon -->
								<img src="../assets/images/logo-icon.png" alt="homepage"
								class="dark-logo" /> <!-- Light Logo icon --> <img
								src="../assets/images/logo-icon.png" alt="homepage"
								class="light-logo" />
						</b> <!--End Logo icon --> <!-- Logo text --> <span class="logo-text">
								<!-- dark Logo text --> <img src="../assets/images/logo-text.png"
								alt="homepage" class="dark-logo" /> <!-- Light Logo text --> <img
								src="../assets/images/logo-light-text.png" class="light-logo"
								alt="homepage" />
						</span>
						</a>
					</div>
					<!-- ============================================================== -->
					<!-- End Logo -->
					<!-- ============================================================== -->
					<!-- ============================================================== -->
					<!-- Toggle which is visible on mobile only -->
					<!-- ============================================================== -->
					<a class="topbartoggler d-block d-md-none waves-effect waves-light"
						href="javascript:void(0)" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation"><i class="ti-more"></i></a>
				</div>
				<!-- ============================================================== -->
				<!-- End Logo -->
				<!-- ============================================================== -->
				<div class="navbar-collapse collapse" id="navbarSupportedContent">
					<!-- ============================================================== -->
					<!-- toggle and nav items -->
					<!-- ============================================================== -->
					<ul class="navbar-nav float-left mr-auto ml-3 pl-1">
						<!-- vacation tap start -->
						<!-- ============================================================== -->
						<!-- 상단메뉴 홈버튼 -->
						<!-- ============================================================== -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="${root }main"> <i
								class="icon-home"></i> 홈
						</a></li>
						<!-- ============================================================== -->
						<!-- 상단메뉴 근무버튼 -->
						<!-- ============================================================== -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#"> <i
								class="icon-book-open"></i> 근무
						</a></li>
						<!-- ============================================================== -->
						<!-- 상단메뉴 휴가버튼 -->
						<!-- ============================================================== -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#"> <i
								class="icon-plane"></i> 휴가
						</a></li>
						<!-- ============================================================== -->
						<!-- 상단메뉴 회사정보버튼 -->
						<!-- ============================================================== -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#"> <i
								class="icon-briefcase"></i> 회사정보
						</a></li>
						<!-- ============================================================== -->
						<!-- 상단메뉴 부서버튼 -->
						<!-- ============================================================== -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="${root }department/mydept"> <i
								data-feather="key" class="svg-icon"></i> 부서
						</a></li>
						<!-- ============================================================== -->
						<!-- 상단메뉴 설정버튼 -->
						<!-- ============================================================== -->
						<li class="nav-item"><a class="nav-link"
							href="${root }master/master-emp"> <i data-feather="settings"
								class="svg-icon"></i> 관리자
						</a></li>
					</ul>
					<!-- ============================================================== -->
					<!-- Right side toggle and nav items -->
					<!-- ============================================================== -->
					<ul class="navbar-nav float-right">
						<!-- Notification -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle pl-md-3 position-relative"
							href="javascript:void(0)" id="bell" role="button"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<span><i data-feather="bell" class="svg-icon"></i></span> <span
								class="badge badge-primary notify-no rounded-circle">5</span>
						</a>
							<div
								class="dropdown-menu dropdown-menu-right mailbox animated bounceInDown">

							</div></li>
						<!-- End Notification -->
						<!-- ============================================================== -->
						<!-- User profile and search -->
						<!-- ============================================================== -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="javascript:void(0)"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<img src="../assets/images/users/profile-pic.jpg" alt="user"
								class="rounded-circle" width="40"> <span
								class="ml-2 d-none d-lg-inline-block"></i></span>
						</a>
							<div
								class="dropdown-menu dropdown-menu-right user-dd animated flipInY">
								<a class="dropdown-item" href="${root }user/mypage"><i
									data-feather="user" class="svg-icon mr-2 ml-1"></i> My Profile</a>
								<a class="dropdown-item" href="javascript:void(0)"><i
									data-feather="credit-card" class="svg-icon mr-2 ml-1"></i> My
									Balance</a> <a class="dropdown-item" href="javascript:void(0)"><i
									data-feather="mail" class="svg-icon mr-2 ml-1"></i> Inbox</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="javascript:void(0)"><i
									data-feather="settings" class="svg-icon mr-2 ml-1"></i> Account
									Setting</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="javascript:void(0)"><i
									data-feather="power" class="svg-icon mr-2 ml-1"></i> Logout</a>
								<div class="dropdown-divider"></div>
								<div class="pl-4 p-3">
									<a href="javascript:void(0)" class="btn btn-sm btn-info">View
										Profile</a>
								</div>
							</div></li>
						<!-- ============================================================== -->
						<!-- User profile and search -->
						<!-- ============================================================== -->
					</ul>
				</div>
			</nav>
		</header>
		<!-- ============================================================== -->
		<!-- End Topbar header -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<c:import url="/WEB-INF/views/include/left-side-bar_emp.jsp"/>
		<!-- ============================================================== -->
		<!-- End Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Page wrapper  -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<div class="page-wrapper">
			<!-- ============================================================== -->
			<!-- Bread crumb and right sidebar toggle -->
			<!-- ============================================================== -->
			
			<!-- ============================================================== -->
			<!-- End Bread crumb and right sidebar toggle -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
			<!-- Container fluid  -->
			<!-- ============================================================== -->
			<div class="container-fluid" style="background-color: #efefef;">
				<div class="row">
					<div class="col-9">
						<h1 style="color: #000; font-weight: 800;">휴가유형</h1>
					</div>
					<div class="col-2">
						<button type="button" class="btn btn-outline-primary btn-sm"
							style="border-radius: 5px;" data-toggle="modal" data-target="#scrollable-modal">+ 추가하기</button>
					</div>
					<div class="col-1"></div>
				</div>
				
				<hr />
				<!-- ============================================================== -->
				<!-- Start Page Content -->
				<!-- ============================================================== -->
				<!-- Row -->
				<div class="row">
					<div class="col-md-3">
						<div
							class="card text-dark bg-white shadow p-2 mb-2 bg-body rounded">
							<div class="card-header">
							
								<h3 class="mb-0 text-dark">연차</h3>
							</div>
							<div class="card-body">
								
								<h5 class="card-title">유급</h5>
								<h6 class="card-subtitle mb-2 text-muted">연차 소모 1일</h6>
								<p class="card-text"></p>
								<button href="#" class="card-link btn btn-outline-primary"
									data-toggle="modal" data-target="#scrollable-modal">수정하기</button>
							</div>
						</div>
					</div>
					
					<div class="col-md-3">
						<div
							class="card text-dark bg-white shadow p-2 mb-2 bg-body rounded">
							<div class="card-header">
							
								<h3 class="mb-0 text-dark">반차</h3>
							</div>
							<div class="card-body">
								
								<h5 class="card-title">유급</h5>
								<h6 class="card-subtitle mb-2 text-muted">연차 소모 0.5일</h6>
								<p class="card-text"></p>
								<button href="#" class="card-link btn btn-outline-primary"
									data-toggle="modal" data-target="#scrollable-modal">수정하기</button>
							</div>
						</div>
					</div>
				</div>
				
				
				<!-- ============================================================== -->
				<!-- End PAge Content -->
				<!-- ============================================================== -->
			</div>
			<!-- ============================================================== -->
			<!-- End Container fluid  -->
			<!-- ============================================================== -->
			<!-- Long Content Scroll Modal -->
			<div class="modal fade" id="scrollable-modal" tabindex="-1"
				role="dialog" aria-labelledby="scrollableModalTitle"
				aria-hidden="true">
				<div class="modal-dialog modal-dialog-scrollable" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="scrollableModalTitle">휴가유형 생성하기</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="row">
								<div class="col-12">
									<div class="card">
										<div class="card-body">
											
												<div class="form-body">
													<label style="color: #6495ED; "><h4>휴가이름 설정</h4></label>
									
													<form >
														<input type="text" 
															name="example-input-normal" class="form-control"
															placeholder="이름을 입력하세요">
													</form>
													<br />
													<label style="color: #6495ED; "><h4>휴가유형</h4></label>
													<div class="row">
														<div class="col-md-12">
															<div class="form-group">
																<div class="row" style="padding-left: 20px;">
																	
																	<div class="col-md-4">
																		<input type="radio" class="form-check-input"
																			name="휴가유형" value="일반" />일반
																	</div>
																	<div class="col-md-4">
																		<input type="radio" class="form-check-input"
																			name="휴가유형" value="특별" />특별
																	</div>
																</div>
																<br />
															</div>
														</div>
													</div>
													<label style="color: #6495ED; "><h4>급여유무</h4></label>
													<div class="row">
														<div class="col-md-12">
															<div class="form-group">
																<div class="row" style="padding-left: 20px;">
																	
																	<div class="col-md-4">
																		<input type="radio" class="form-check-input" 
																			name="급여유형" value="유급" />유급
																	</div>
																	<div class="col-md-4">
																		<input type="radio" class="form-check-input"
																			name="급여유형" value="무급" />무급
																	</div>
																</div>
																<br />
															</div>
														</div>
													</div>
												
													
													<label style="color: #6495ED; "><h4>연차차감일수</h4></label>
													<div class="row">
														<div class="col-6">
															<div class="row">
																<div class="col-12">연차 차감일수 선택</div>
															</div>
															
																<select class="custom-select" name="연차차감일수">
																	<option value="0">--</option>
																	<option value="1">1</option>
																	<option value="2">2</option>
																	<option value="3">3</option>
																	<option value="4">4</option>
																	<option value="5">5</option>
																	<option value="6">6</option>
																</select>
															
														</div>
														
													</div>
														<br />
													
													<div>
													<label style="color: #6495ED; "><h4>특별유형 연차 차감일수</h4></label>
									
													<form >
														<input type="text" 
															name="example-input-normal" class="form-control"
															placeholder="차감일수를 입력하세요">
													</form>
													</div>
													<br />
												
													
												</div>
										</div>
									</div>
								</div>
								
							</div>
							<div class="modal-footer">
								<button type="reset" class="btn btn-danger btn-sm" data-dismiss="modal">Close</button>
								<button type="submit" class="btn btn-primary btn-sm"
									data-dismiss="modal">Save</button>
							</div>
						</div>
					</div>
				</div>
				</div>
			</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- ============================================================== -->
	<!-- footer -->
	<!-- ============================================================== -->
	<footer class="footer text-center text-muted">
		All Rights Reserved by Adminmart. Designed and Developed by <a
			href="https://wrappixel.com">WrapPixel</a>.
	</footer>
	<!-- ============================================================== -->
	<!-- End footer -->
	<!-- ============================================================== -->
	</div>
	<!-- ============================================================== -->
	<!-- End Page wrapper  -->
	<!-- ============================================================== -->
	</div>
	<!-- ============================================================== -->
	<!-- End Wrapper -->
	<!-- ============================================================== -->
	<!-- End Wrapper -->
	<!-- ============================================================== -->
	<!-- All Jquery -->
	<!-- ============================================================== -->
	<script src="../assets/libs/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap tether Core JavaScript -->
	<script src="../assets/libs/popper.js/dist/umd/popper.min.js"></script>
	<script src="../assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- apps -->
	<!-- apps -->
	<script src="../dist/js/app-style-switcher.js"></script>
	<script src="../dist/js/feather.min.js"></script>
	<!-- slimscrollbar scrollbar JavaScript -->
	<script
		src="../assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
	<script src="../assets/extra-libs/sparkline/sparkline.js"></script>
	<!--Wave Effects -->
	<!-- themejs -->
	<!--Menu sidebar -->
	<script src="../dist/js/sidebarmenu.js"></script>
	<!--Custom JavaScript -->
	<script src="../dist/js/custom.min.js"></script>
	<script src="../dist/js/worktype.js"></script>
	<!--This page plugins -->
	<script
		src="../assets/extra-libs/datatables.net/js/jquery.dataTables.min.js"></script>
	<script src="../dist/js/pages/datatable/datatable-basic.init.js"></script>
</body>

</html>