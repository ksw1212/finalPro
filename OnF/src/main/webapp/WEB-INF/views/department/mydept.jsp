<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<link rel="icon" type="image/png" sizes="16x16" href="./assets/images/favicon.png">
	<title>dept-조직도</title>
	<!-- Custom CSS -->
	<link href="../assets/extra-libs/c3/c3.min.css" rel="stylesheet">
	<link href="../assets/libs/chartist/dist/chartist.min.css" rel="stylesheet">
	<link href="../assets/extra-libs/jvector/jquery-jvectormap-2.0.2.css" rel="stylesheet" />
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
    <div id="main-wrapper" data-theme="light" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
        data-sidebar-position="fixed" data-header-position="fixed" data-boxed-layout="full">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin6">
            <nav class="navbar top-navbar navbar-expand-md">
                <div class="navbar-header" data-logobg="skin6">
                    <!-- This is for the sidebar toggle which is visible on mobile only -->
                    <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i
                            class="ti-menu ti-close"></i></a>
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <div class="navbar-brand">
                        <!-- Logo icon -->
                        <a href="dept.jsp">
                            <b class="logo-icon">
                                <!-- Dark Logo icon -->
                                <img src="../assets/images/logo-icon.png" alt="homepage" class="dark-logo" />
                                <!-- Light Logo icon -->
                                <img src="../assets/images/logo-icon.png" alt="homepage" class="light-logo" />
                            </b>
                            <!--End Logo icon -->
                            <!-- Logo text -->
                            <span class="logo-text">
                                <!-- dark Logo text -->
                                <img src="../assets/images/logo-text.png" alt="homepage" class="dark-logo" />
                                <!-- Light Logo text -->
                                <img src="../assets/images/logo-light-text.png" class="light-logo" alt="homepage" />
                            </span>
                        </a>
                    </div>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- Toggle which is visible on mobile only -->
                    <!-- ============================================================== -->
                    <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)"
                        data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i
                            class="ti-more"></i></a>
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
                    	<li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#">
                            	<i class="icon-home"></i>
                               	홈
                            </a>
                        </li>
                        <!-- ============================================================== -->
                        <!-- 상단메뉴 근무버튼 -->
                        <!-- ============================================================== -->
                    	<li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#">
		                        <i class="icon-book-open"></i>
                               	근무
                            </a>
                        </li>
                        <!-- ============================================================== -->
                        <!-- 상단메뉴 휴가버튼 -->
                        <!-- ============================================================== -->
                    	<li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#">
		                        <i class="icon-plane"></i>
                               	휴가
                            </a>
                        </li>
                        <!-- ============================================================== -->
                        <!-- 상단메뉴 회사정보버튼 -->
                        <!-- ============================================================== -->
                    	<li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#">
                            	<i class="icon-briefcase"></i>
                               	회사정보
                            </a>
                        </li>
                    	<!-- ============================================================== -->
                        <!-- 상단메뉴 부서버튼 -->
                        <!-- ============================================================== -->
                    	<li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="mydept.jsp">
                                <i data-feather="key" class="svg-icon"></i>
                               	부서
                            </a>
                        </li>
                        <!-- ============================================================== -->
                        <!-- 상단메뉴 설정버튼 -->
                        <!-- ============================================================== -->
                        <li class="nav-item">
                            <a class="nav-link" href="master-emp.jsp" >
                                <i data-feather="settings" class="svg-icon"></i>
                                관리자
                            </a>
                        </li>
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
                                <img src="../assets/images/users/profile-pic.jpg" alt="user" class="rounded-circle"
                                    width="40">
                                <span class="ml-2 d-none d-lg-inline-block"></span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right user-dd animated flipInY">
                                <a class="dropdown-item" href="javascript:void(0)"><i data-feather="user"
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
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="index.html"
                                aria-expanded="false"><i data-feather="home" class="feather-icon"></i><span
                                    class="hide-menu">Dashboard</span></a></li>
                        <li class="list-divider"></li>
                        <li class="nav-small-cap"><strong style="font-weight:800" class="hide-menu">부서 정보</strong></li>

                        <li class="sidebar-item"> 
                        	<a class="sidebar-link" href="${root }department/mydept" aria-expanded="false">
                        		<i data-feather="tag" class="feather-icon"></i>
                        		<span class="hide-menu">MY 부서 </span>
                        	</a>
                        </li>
                        <li class="sidebar-item"> 
                        	<a class="sidebar-link sidebar-link" href="${root }department/dept" aria-expanded="false">
                        		<i data-feather="message-square" class="feather-icon"></i>
                        		<span class="hide-menu">조직도</span></a>
                        </li>
                        
                        <li class="list-divider"></li>
                        
                        <li class="nav-small-cap">
                        	<span class="hide-menu">여기가 끝</span>
                        </li>
                        <li class="sidebar-item"> 
                        	<a class="sidebar-link sidebar-link" href="#" aria-expanded="false">
                        		<i data-feather="edit-3" class="feather-icon"></i>
                        		<span class="hide-menu">Documentation</span>
                        	</a>
                        </li>
                        <li class="sidebar-item"> 
                        	<a class="sidebar-link sidebar-link" href="#" aria-expanded="false">
                        		<i data-feather="log-out" class="feather-icon"></i>
                        		<span class="hide-menu">Logout</span>
                        	</a>
                        </li>
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
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
            	<!-- *************************************************************** -->
                <!-- Start First Cards -->
                <!-- *************************************************************** -->
                <div class="row"><!-- jumbo & table -->
					<div class="col-5 jumbotron">
						<div class="row">
							<div class="col-12 card-group ml-auto mt-md-20 mr-auto">
								<div class="card border-right">
									<div class="card-body">
										<div class="d-flex d-lg-flex d-md-block align-items-center">
											<div>
												<div class="d-inline-flex align-items-center">
													<h2 class="text-dark mb-1 font-weight-medium">14명</h2>
												</div>
												<h6	class="text-muted font-weight-normal mb-0 w-100 text-truncate">팀 인원</h6>
											</div>
										</div>
									</div>
								</div>
								<div class="card border-right">
									<div class="card-body">
										<div class="d-flex d-lg-flex d-md-block align-items-center">
											<div>
												<h2
													class="text-dark mb-1 w-100 text-truncate font-weight-medium">
													홍길동
												</h2>
												<h6
													class="text-muted font-weight-normal mb-0 w-100 text-truncate">팀 리더</h6>
											</div>
										</div>
									</div>
								</div>
								<div class="card border-right">
									<div class="card-body">
										<div class="d-flex d-lg-flex d-md-block align-items-center">
											<div>
												<div class="d-inline-flex align-items-center">
													<h2 class="text-dark mb-1 font-weight-medium">1538</h2>
												</div>
												<h6
													class="text-muted font-weight-normal mb-0 w-100 text-truncate">내선번호</h6>
											</div>
										</div>
									</div>
								</div>
								</div>
								</div>
								<!-- *************************************************************** -->
								<!-- Start Top Leader Table -->
								<!-- *************************************************************** -->
								<div class="row">
									<div class="col-12 ">
										<div class="card ml-auto mt-md-20 mr-auto">
											<div class="card-body">
												<div class="d-flex align-items-center mb-4">
													<h4 class="card-title">휴가</h4>
													<div class="ml-auto">
														<div class="dropdown sub-dropdown">
															<button class="btn btn-link text-muted dropdown-toggle"
																type="button" id="dd1" data-toggle="dropdown"
																aria-haspopup="true" aria-expanded="false">
																<i data-feather="more-vertical"></i>
															</button>
															<div class="dropdown-menu dropdown-menu-right"
																aria-labelledby="dd1">
																<a class="dropdown-item" href="#">Insert</a> <a
																	class="dropdown-item" href="#">Update</a> <a
																	class="dropdown-item" href="#">Delete</a>
															</div>
														</div>
													</div>
												</div>
												<div class="table-responsive">
													<table class="table no-wrap v-middle mb-0">
														<thead>
															<tr class="border-0">
																<th
																	class="border-0 font-14 font-weight-medium text-muted">이름</th>
																<th
																	class="border-0 font-14 font-weight-medium text-muted px-2">Project
																</th>
																<th
																	class="border-0 font-14 font-weight-medium text-muted text-center">
																	Status</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td class="border-top-0 px-2 py-4">
																	<div class="d-flex no-block align-items-center">
																		<div class="mr-3">
																			<img src="../assets/images/users/widget-table-pic1.jpg"
																				alt="user" class="rounded-circle" width="45"
																				height="45" />
																		</div>
																		<div class="">
																			<h5 class="text-dark mb-0 font-16 font-weight-medium">Hanna
																				Gover</h5>
																			<span class="text-muted font-14">hgover@gmail.com</span>
																		</div>
																	</div>
																</td>
																<td class="border-top-0 text-muted px-2 py-4 font-14">Elite
																	Admin</td>
																<td class="border-top-0 text-center px-2 py-4"><i
																	class="fa fa-circle text-primary font-12"
																	data-toggle="tooltip" data-placement="top"
																	title="In Testing"></i></td>
															</tr>
															<tr>
																<td class="px-2 py-4">
																	<div class="d-flex no-block align-items-center">
																		<div class="mr-3">
																			<img src="../assets/images/users/widget-table-pic2.jpg"
																				alt="user" class="rounded-circle" width="45"
																				height="45" />
																		</div>
																		<div class="">
																			<h5 class="text-dark mb-0 font-16 font-weight-medium">Daniel
																				Kristeen</h5>
																			<span class="text-muted font-14">Kristeen@gmail.com</span>
																		</div>
																	</div>
																</td>
																<td class="text-muted px-2 py-4 font-14">Real Homes
																	WP Theme</td>
																<td class="text-center px-2 py-4"><i
																	class="fa fa-circle text-success font-12"
																	data-toggle="tooltip" data-placement="top" title="Done"></i>
																</td>
															</tr>
															<tr>
																<td class="px-2 py-4">
																	<div class="d-flex no-block align-items-center">
																		<div class="mr-3">
																			<img src="../assets/images/users/widget-table-pic3.jpg"
																				alt="user" class="rounded-circle" width="45"
																				height="45" />
																		</div>
																		<div class="">
																			<h5 class="text-dark mb-0 font-16 font-weight-medium">Julian
																				Josephs</h5>
																			<span class="text-muted font-14">Josephs@gmail.com</span>
																		</div>
																	</div>
																</td>
																<td class="text-muted px-2 py-4 font-14">MedicalPro
																	WP Theme</td>

																</td>
																<td class="text-center px-2 py-4"><i
																	class="fa fa-circle text-primary font-12"
																	data-toggle="tooltip" data-placement="top" title="Done"></i>
																</td>
															</tr>
															<tr>
																<td class="px-2 py-4">
																	<div class="d-flex no-block align-items-center">
																		<div class="mr-3">
																			<img src="../assets/images/users/widget-table-pic4.jpg"
																				alt="user" class="rounded-circle" width="45"
																				height="45" />
																		</div>
																		<div class="">
																			<h5 class="text-dark mb-0 font-16 font-weight-medium">Jan
																				Petrovic</h5>
																			<span class="text-muted font-14">hgover@gmail.com</span>
																		</div>
																	</div>
																</td>
																<td class="text-muted px-2 py-4 font-14">Hosting
																	Press HTML</td>

															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- *************************************************************** -->
								<!-- End Top Leader Table -->
								<!-- *************************************************************** -->
						</div>
						<!-- *************************************************************** -->
						<!-- Start First Cards -->
						<!-- *************************************************************** -->
						<div class="col-6 card border-right" style="margin-left: 15px">
							<div class="align-items-center">
								<div class="card-body">
									<h4 class="card-title" style="font-weight: 800">경영지원본부</h4>
									<h6 class="card-subtitle">인사총무팀</h6>
									<div class="table-responsive">
										<table class="table table-hover">
											<thead class="bg-primary text-white">
												<tr>
													<th>사번</th>
													<th>이름</th>
													<th>직급</th>
													<th>내션번호</th>
												</tr>
											</thead>
											<tbody onclick="javascript:alert('test')">
												<tr>
													<td>1</td>
													<td>Nigam</td>
													<td>팀장</td>
													<td>7011</td>
												</tr>
												<tr>
													<td>2</td>
													<td>Deshmukh</td>
													<td>Prohaska</td>
													<td>@Genelia</td>
												</tr>
												<tr>
													<td>3</td>
													<td>Roshan</td>
													<td>Rogahn</td>
													<td>@Hritik</td>
												</tr>
												<tr>
													<td>1</td>
													<td>Nigam</td>
													<td>팀장</td>
													<td>7011</td>
												</tr>
												<tr>
													<td>2</td>
													<td>Deshmukh</td>
													<td>Prohaska</td>
													<td>@Genelia</td>
												</tr>
												<tr>
													<td>3</td>
													<td>Roshan</td>
													<td>Rogahn</td>
													<td>@Hritik</td>
												</tr>
											</tbody>
										</table>
									</div>
									<!-- ============================================================== -->
									<!-- 페이징 넘버  -->
									<!-- ============================================================== -->
									<div class="col-12">
										<ul class="pagination pagination-sm justify-content-center">
											<li class="page-item disabled"><a class="page-link"
												href="javascript:void(0)" tabindex="-1">Previous</a></li>
											<li class="page-item"><a class="page-link"
												href="javascript:void(0)">1</a></li>
											<li class="page-item"><a class="page-link"
												href="javascript:void(0)">2</a></li>
											<li class="page-item"><a class="page-link"
												href="javascript:void(0)">3</a></li>
											<li class="page-item"><a class="page-link"
												href="javascript:void(0)">Next</a></li>
										</ul>
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
    <script src="../assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="../assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- apps -->
    <!-- apps -->
    <script src="../dist/js/app-style-switcher.js"></script>
    <script src="../dist/js/feather.min.js"></script>
    <script src="../assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="../dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="../dist/js/custom.min.js"></script>
    <!--This page JavaScript -->
    <script src="../assets/extra-libs/c3/d3.min.js"></script>
    <script src="../assets/extra-libs/c3/c3.min.js"></script>
    <script src="../assets/libs/chartist/dist/chartist.min.js"></script>
    <script src="../assets/libs/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>
    <script src="../assets/extra-libs/jvector/jquery-jvectormap-2.0.2.min.js"></script>
    <script src="../assets/extra-libs/jvector/jquery-jvectormap-world-mill-en.js"></script>
    <script src="../dist/js/pages/dashboards/dashboard1.min.js"></script>
</body>

</html>