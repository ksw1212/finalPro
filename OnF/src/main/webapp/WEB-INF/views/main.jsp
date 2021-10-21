<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
<script language="JavaScript">
	
		var SetTime = 0;		// 최초 설정 시간(기본 : 초)

		function msg_time() {	// 1초씩 카운트
			
			mm = Math.floor(SetTime / 60)
			
			
			m = Math.floor(SetTime / 3600) +"<font size='5px'> 시간  </font> "+ mm  + "<font size='5px'> 분  </font> " + (SetTime % 60) + "<font size='5px'> 초  </font> " ;	// 남은 시간 계산
			
			
			
			var msg = "<font color='blue'> <font size='5px'>" + m + "</font>";
			
			
			document.all.ViewTimer.innerHTML = msg;		// div 영역에 보여줌 
					
			SetTime++;					// 1초씩 감소
			
			if (SetTime > 7300) {			// 시간이 종료 되었으면..
				
				clearInterval(tid);		// 타이머 해제
				alert("근무 종료");
			}
			
		}

		function TimerStart(){ tid=setInterval('msg_time()',1000) };
		
	</script>



<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="assets/images/favicon.png">
<title>메인페이지</title>
<!-- Custom CSS -->
<link href="assets/libs/fullcalendar/dist/fullcalendar.min.css"
	rel="stylesheet" />
<!-- Custom CSS -->
<link href="dist/css/style.min.css" rel="stylesheet">
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
						<a href="main.jsp"> <b class="logo-icon"> <!-- Dark Logo icon -->
								<img src="assets/images/onoff.png" alt="homepage"
								class="dark-logo" />

						</b> <!--End Logo icon -->

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
						<!-- Notification -->

						<!-- End Notification -->
						<!-- ============================================================== -->
						<!-- create new -->
						<!-- ============================================================== -->
						<ul class="navbar-nav float-left mr-auto ml-3 pl-1">
							<!-- vacation tap start -->
							<!-- ============================================================== -->
							<!-- 상단메뉴 홈버튼 -->
							<!-- ============================================================== -->
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="${root}department/mydept">
									<i class="icon-home"></i> 홈
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
								class="nav-link dropdown-toggle" href="${root}department/mydept">
									<i data-feather="key" class="svg-icon"></i> 부서
							</a></li>
							<!-- ============================================================== -->
							<!-- 상단메뉴 설정버튼 -->
							<!-- ============================================================== -->
							<li class="nav-item"><a class="nav-link"
								href="${root}master/master-emp"> <i data-feather="settings"
									class="svg-icon"></i> 관리자
							</a></li>
						</ul>
						<!-- ============================================================== -->
						<!-- Right side toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-right">
                     <!-- Notification -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle pl-md-3 position-relative" href="javascript:void(0)"
                                id="bell" role="button" data-toggle="dropdown" aria-haspopup="true"
                                aria-expanded="false">
                                <span><i data-feather="bell" class="svg-icon"></i></span>
                                <span class="badge badge-primary notify-no rounded-circle">5</span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-left mailbox animated bounceInDown">
                                <ul class="list-style-none">
                                    <li>
                                        <div class="message-center notifications position-relative">
                                            <!-- Message -->
                                            <a href="javascript:void(0)"
                                                class="message-item d-flex align-items-center border-bottom px-3 py-2">
                                                <div class="btn btn-danger rounded-circle btn-circle"><i
                                                        data-feather="airplay" class="text-white"></i></div>
                                                <div class="w-75 d-inline-block v-middle pl-2">
                                                    <h6 class="message-title mb-0 mt-1">Luanch Admin</h6>
                                                    <span class="font-12 text-nowrap d-block text-muted">Just see
                                                        the my new
                                                        admin!</span>
                                                    <span class="font-12 text-nowrap d-block text-muted">9:30 AM</span>
                                                </div>
                                            </a>
                                            <!-- Message -->
                                            <a href="javascript:void(0)"
                                                class="message-item d-flex align-items-center border-bottom px-3 py-2">
                                                <span class="btn btn-success text-white rounded-circle btn-circle"><i
                                                        data-feather="calendar" class="text-white"></i></span>
                                                <div class="w-75 d-inline-block v-middle pl-2">
                                                    <h6 class="message-title mb-0 mt-1">Event today</h6>
                                                    <span
                                                        class="font-12 text-nowrap d-block text-muted text-truncate">Just
                                                        a reminder that you have event</span>
                                                    <span class="font-12 text-nowrap d-block text-muted">9:10 AM</span>
                                                </div>
                                            </a>
                                            <!-- Message -->
                                            <a href="javascript:void(0)"
                                                class="message-item d-flex align-items-center border-bottom px-3 py-2">
                                                <span class="btn btn-info rounded-circle btn-circle"><i
                                                        data-feather="settings" class="text-white"></i></span>
                                                <div class="w-75 d-inline-block v-middle pl-2">
                                                    <h6 class="message-title mb-0 mt-1">Settings</h6>
                                                    <span
                                                        class="font-12 text-nowrap d-block text-muted text-truncate">You
                                                        can customize this template
                                                        as you want</span>
                                                    <span class="font-12 text-nowrap d-block text-muted">9:08 AM</span>
                                                </div>
                                            </a>
                                            <!-- Message -->
                                            <a href="javascript:void(0)"
                                                class="message-item d-flex align-items-center border-bottom px-3 py-2">
                                                <span class="btn btn-primary rounded-circle btn-circle"><i
                                                        data-feather="box" class="text-white"></i></span>
                                                <div class="w-75 d-inline-block v-middle pl-2">
                                                    <h6 class="message-title mb-0 mt-1">Pavan kumar</h6> <span
                                                        class="font-12 text-nowrap d-block text-muted">Just
                                                        see the my admin!</span>
                                                    <span class="font-12 text-nowrap d-block text-muted">9:02 AM</span>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <a class="nav-link pt-3 text-center text-dark" href="javascript:void(0);">
                                            <strong>Check all notifications</strong>
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <!-- End Notification -->
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                <img src="assets/images/users/profile-pic.jpg" alt="user" class="rounded-circle"
                                    width="40">
                                <span class="ml-2 d-none d-lg-inline-block"></span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right user-dd animated flipInY">
                                <a class="dropdown-item" href="${root }user/mypage"><i data-feather="user"
                                        class="svg-icon mr-2 ml-1"></i>
                                    My Profile</a>
                                <a class="dropdown-item" href="javascript:void(0)"><i data-feather="credit-card"
                                        class="svg-icon mr-2 ml-1"></i>
                                    My Balance</a>
                                <a class="dropdown-item" href="javascript:void(0)"><i data-feather="mail"
                                        class="svg-icon mr-2 ml-1"></i>
                                    Inbox</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="javascript:void(0)"><i data-feather="settings"
                                        class="svg-icon mr-2 ml-1"></i>
                                    Account Setting</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="javascript:void(0)"><i data-feather="power"
                                        class="svg-icon mr-2 ml-1"></i>
                                    Logout</a>
                                <div class="dropdown-divider"></div>
                                <div class="pl-4 p-3"><a href="javascript:void(0)" class="btn btn-sm btn-info">View
                                        Profile</a></div>
                            </div>
                        </li>
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
		<aside class="left-sidebar" data-sidebarbg="skin6">
			<!-- Sidebar scroll-->
			<div class="scroll-sidebar" data-sidebarbg="skin6">
				<!-- Sidebar navigation-->
				<nav class="sidebar-nav">
					<ul id="sidebarnav">
						<li class="sidebar-item"><a class="sidebar-link sidebar-link"
							href="index.html" aria-expanded="false"><i
								data-feather="home" class="feather-icon"></i><span
								class="hide-menu">Dashboard</span></a></li>
						<li class="list-divider"></li>
						<li class="nav-small-cap"><span class="hide-menu">Work
								Today</span></li>
						<ui>
						<center>
							<div id="ViewTimer"></div>
							<br />

							<button type="button"
								class="btn waves-effect waves-light btn-rounded btn-secondary"
								href="${root}main">일정 보기</button>
							<br />
							<br />
							<button type="button"
								class="btn waves-effect waves-light btn-rounded btn-secondary"
								onclick="TimerStart()">근무 시작하기</button>
							<br />
						</center>

						</ui>


						<li class="list-divider"></li>
						<li class="nav-small-cap"><span class="hide-menu">Components</span></li>
						<li class="sidebar-item"><a class="sidebar-link has-arrow"
							href="javascript:void(0)" aria-expanded="false"><i
								data-feather="file-text" class="feather-icon"></i><span
								class="hide-menu">근무일정 </span></a>
							<ul aria-expanded="false"
								class="collapse  first-level base-level-line">
								<li class="sidebar-item"><a href="form-inputs.html"
									class="sidebar-link"><span class="hide-menu"> 근무일정 </span></a>
								</li>
								<li class="sidebar-item"><a href="form-input-grid.html"
									class="sidebar-link"><span class="hide-menu"> 근무상세 </span></a>
								</li>
								<li class="sidebar-item"><a href="form-checkbox-radio.html"
									class="sidebar-link"><span class="hide-menu"> 뭐를 넣을까
									</span></a></li>
							</ul></li>
						<li class="sidebar-item"><a class="sidebar-link has-arrow"
							href="javascript:void(0)" aria-expanded="false"><i
								data-feather="grid" class="feather-icon"></i><span
								class="hide-menu">휴가 </span></a>
							<ul aria-expanded="false"
								class="collapse  first-level base-level-line">
								<li class="sidebar-item"><a href="${root }user/vac_req"
									class="sidebar-link"><span class="hide-menu"> 휴가신청 </span></a>
								</li>
								<li class="sidebar-item"><a href="table-dark-basic.html"
									class="sidebar-link"><span class="hide-menu"> 휴가삭제 </span></a>
								</li>
								<li class="sidebar-item"><a href="table-sizing.html"
									class="sidebar-link"><span class="hide-menu"> 휴가리스트
									</span></a></li>
								<li class="sidebar-item"><a
									href="table-layout-coloured.html" class="sidebar-link"><span
										class="hide-menu"> Coloured Table Layout </span></a></li>
								<li class="sidebar-item"><a
									href="table-datatable-basic.html" class="sidebar-link"><span
										class="hide-menu"> Basic Datatables Layout </span></a></li>
							</ul></li>
						<li class="sidebar-item"><a class="sidebar-link has-arrow"
							href="javascript:void(0)" aria-expanded="false"><i
								data-feather="bar-chart" class="feather-icon"></i><span
								class="hide-menu">회사정보 </span></a>
							<ul aria-expanded="false"
								class="collapse  first-level base-level-line">
								<li class="sidebar-item"><a href="chart-morris.html"
									class="sidebar-link"><span class="hide-menu"> 회사리스트
									</span></a></li>
								<li class="sidebar-item"><a href="chart-chart-js.html"
									class="sidebar-link"><span class="hide-menu">
											ChartJs </span></a></li>
								<li class="sidebar-item"><a href="chart-knob.html"
									class="sidebar-link"><span class="hide-menu"> Knob
											Chart </span></a></li>
							</ul></li>
						<li class="sidebar-item"><a class="sidebar-link has-arrow"
							href="javascript:void(0)" aria-expanded="false"><i
								data-feather="box" class="feather-icon"></i><span
								class="hide-menu">UI Elements </span></a>
							<ul aria-expanded="false"
								class="collapse  first-level base-level-line">
								<li class="sidebar-item"><a href="ui-buttons.html"
									class="sidebar-link"><span class="hide-menu">
											Buttons </span></a></li>
								<li class="sidebar-item"><a href="ui-modals.html"
									class="sidebar-link"><span class="hide-menu"> Modals
									</span></a></li>
								<li class="sidebar-item"><a href="ui-tab.html"
									class="sidebar-link"><span class="hide-menu"> Tabs </span></a></li>
								<li class="sidebar-item"><a href="ui-tooltip-popover.html"
									class="sidebar-link"><span class="hide-menu">
											Tooltip & Popover</span></a></li>
								<li class="sidebar-item"><a href="ui-notification.html"
									class="sidebar-link"><span class="hide-menu">Notification</span></a></li>
								<li class="sidebar-item"><a href="ui-progressbar.html"
									class="sidebar-link"><span class="hide-menu">Progressbar</span></a></li>
								<li class="sidebar-item"><a href="ui-typography.html"
									class="sidebar-link"><span class="hide-menu">Typography</span></a></li>
								<li class="sidebar-item"><a href="ui-bootstrap.html"
									class="sidebar-link"><span class="hide-menu">Bootstrap
											UI</span></a></li>
								<li class="sidebar-item"><a href="ui-breadcrumb.html"
									class="sidebar-link"><span class="hide-menu">Breadcrumb</span></a></li>
								<li class="sidebar-item"><a href="ui-list-media.html"
									class="sidebar-link"><span class="hide-menu">List
											Media</span></a></li>
								<li class="sidebar-item"><a href="ui-grid.html"
									class="sidebar-link"><span class="hide-menu"> Grid </span></a></li>
								<li class="sidebar-item"><a href="ui-carousel.html"
									class="sidebar-link"><span class="hide-menu">
											Carousel</span></a></li>
								<li class="sidebar-item"><a href="ui-scrollspy.html"
									class="sidebar-link"><span class="hide-menu">
											Scrollspy</span></a></li>
								<li class="sidebar-item"><a href="ui-toasts.html"
									class="sidebar-link"><span class="hide-menu"> Toasts</span></a>
								</li>
								<li class="sidebar-item"><a href="ui-spinner.html"
									class="sidebar-link"><span class="hide-menu">
											Spinner </span></a></li>
							</ul></li>
						<li class="sidebar-item"><a class="sidebar-link sidebar-link"
							href="ui-cards.html" aria-expanded="false"><i
								data-feather="sidebar" class="feather-icon"></i><span
								class="hide-menu">Cards </span></a></li>
						<li class="list-divider"></li>
						<li class="nav-small-cap"><span class="hide-menu">Authentication</span></li>

						<li class="sidebar-item"><a class="sidebar-link sidebar-link"
							href="authentication-login1.html" aria-expanded="false"><i
								data-feather="lock" class="feather-icon"></i><span
								class="hide-menu">로그인 </span></a></li>
						<li class="sidebar-item"><a class="sidebar-link sidebar-link"
							href="authentication-register1.html" aria-expanded="false"><i
								data-feather="lock" class="feather-icon"></i><span
								class="hide-menu">회원가입 </span></a></li>

						<li class="sidebar-item"><a class="sidebar-link has-arrow"
							href="javascript:void(0)" aria-expanded="false"><i
								data-feather="feather" class="feather-icon"></i><span
								class="hide-menu">여기에는 </span></a>
							<ul aria-expanded="false"
								class="collapse first-level base-level-line">
								<li class="sidebar-item"><a href="icon-fontawesome.html"
									class="sidebar-link"><span class="hide-menu"> 뭐를 </span></a></li>

								<li class="sidebar-item"><a
									href="icon-simple-lineicon.html" class="sidebar-link"><span
										class="hide-menu"> 넣을까요? </span></a></li>
							</ul></li>

						<li class="sidebar-item"><a class="sidebar-link has-arrow"
							href="javascript:void(0)" aria-expanded="false"><i
								data-feather="crosshair" class="feather-icon"></i><span
								class="hide-menu">여기도</span></a>
							<ul aria-expanded="false"
								class="collapse first-level base-level-line">
								<li class="sidebar-item"><a href="javascript:void(0)"
									class="sidebar-link"><span class="hide-menu"> 의견있으면</span></a>
								</li>
								<li class="sidebar-item"><a href="javascript:void(0)"
									class="sidebar-link"><span class="hide-menu"> 말씀해주세요</span></a>
								</li>
								<li class="sidebar-item"><a class="has-arrow sidebar-link"
									href="javascript:void(0)" aria-expanded="false"><span
										class="hide-menu">Menu 1.3</span></a>
									<ul aria-expanded="false"
										class="collapse second-level base-level-line">
										<li class="sidebar-item"><a href="javascript:void(0)"
											class="sidebar-link"><span class="hide-menu"> item
													1.3.1</span></a></li>
										<li class="sidebar-item"><a href="javascript:void(0)"
											class="sidebar-link"><span class="hide-menu"> item
													1.3.2</span></a></li>
										<li class="sidebar-item"><a href="javascript:void(0)"
											class="sidebar-link"><span class="hide-menu"> item
													1.3.3</span></a></li>
										<li class="sidebar-item"><a href="javascript:void(0)"
											class="sidebar-link"><span class="hide-menu"> item
													1.3.4</span></a></li>
									</ul></li>
								<li class="sidebar-item"><a href="javascript:void(0)"
									class="sidebar-link"><span class="hide-menu"> item
											1.4</span></a></li>
							</ul></li>
						<li class="list-divider"></li>
						<li class="nav-small-cap"><span class="hide-menu">Extra</span></li>
						<li class="sidebar-item"><a class="sidebar-link sidebar-link"
							href="docs/docs.html" aria-expanded="false"><i
								data-feather="edit-3" class="feather-icon"></i><span
								class="hide-menu">정보수정</span></a></li>
						<li class="sidebar-item"><a class="sidebar-link sidebar-link"
							href="authentication-login1.html" aria-expanded="false"><i
								data-feather="log-out" class="feather-icon"></i><span
								class="hide-menu">로그아웃</span></a></li>
					</ul>
				</nav>
				<!-- End Sidebar navigation -->
			</div>
			<!-- End Sidebar scroll-->
		</aside>
		<!-- ============================================================== -->
		<!-- End Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Page wrapper  -->
		<!-- ============================================================== -->
		<div class="page-wrapper">
			<!-- ============================================================== -->
			<!-- Bread crumb and right sidebar toggle -->
			<!-- ============================================================== -->

			<div class="page-breadcrumb">
				<div class="row">
					<div class="col-7 align-self-center">


						<div class="row">
							<div class="col-14">
								<div class="card">
									<div class="card-body">
										<center>
											<h4 class="card-title" align="cetner">공지사항</h4>
										</center>
										<div class="table-responsive">
											<table id="zero_config"
												class="table table-striped table-bordered no-wrap">
												<thead>

													<tr>
														<td>제목</td>
														<td>작성자</td>
														<td>작성일자</td>
														<td>더보기</td>

													</tr>
												</thead>
												<tbody>
													<tr>
														<td><a>on&off 팀원들에 대한 공지사항</a></td>
														<td>김지승</td>
														<td>2021-10-06</td>
														<td colspan="2"><button type="button"
																class="btn btn-primary btn-circle" onclick="">
																<i class="fa fa-list"></i>
															</button></td>
													</tr>


												</tbody>

											</table>




										</div>

									</div>
								</div>
								<!-- ============================================================== -->
								<!-- End Bread crumb and right sidebar toggle -->
								<!-- ============================================================== -->
								<!-- ============================================================== -->
								<!-- Container fluid  -->
								<!-- ============================================================== -->
								<div class="container-fluid">
									<div class="row">
										<div class="col-md-14">
											<div class="card">
												<div class="">
													<div class="row">
														<div class="">

															<div class="card-body">


																<!-- checkbox -->

															</div>
														</div>
													</div>
												</div>
												<div class="col-lg-14">
													<div class="card-body b-l calender-sidebar">
														<div id="calendar"></div>
													</div>

												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- ============================================================== -->
						<!-- End Container fluid  -->
						<!-- ============================================================== -->
						<!-- ============================================================== -->
						<!-- footer -->
						<!-- ============================================================== -->

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
				<!-- ============================================================== -->
				<!-- All Jquery -->
				<!-- ============================================================== -->
				<script src="assets/libs/jquery/dist/jquery.min.js"></script>
				<script
					src="assets/extra-libs/taskboard/js/jquery.ui.touch-punch-improved.js"></script>
				<script src="assets/extra-libs/taskboard/js/jquery-ui.min.js"></script>
				<script src="assets/libs/popper.js/dist/umd/popper.min.js"></script>
				<script src="assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
				<!-- apps -->
				<script src="dist/js/app-style-switcher.js"></script>
				<script src="dist/js/feather.min.js"></script>
				<script
					src="assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
				<script src="dist/js/sidebarmenu.js"></script>
				<!--Custom JavaScript -->
				<script src="dist/js/custom.min.js"></script>
				<!--This page JavaScript -->
				<script src="assets/libs/moment/min/moment.min.js"></script>
				<script src="assets/libs/fullcalendar/dist/fullcalendar.min.js"></script>
				<script src="dist/js/pages/calendar/cal-init.js"></script>
</body>

</html>