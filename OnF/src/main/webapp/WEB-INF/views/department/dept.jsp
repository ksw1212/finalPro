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
	<link rel="icon" type="image/png" sizes="16x16" href="../assets/images/favicon.png">
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
                   <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav  mr-auto ml-3 justify-content-center pl-1">
                    <!-- vacation tap start -->
                    	<!-- ============================================================== -->
                        <!-- 상단메뉴 홈버튼 -->
                        <!-- ============================================================== -->
                    	<li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="mydept.jsp">
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
                            <div class="dropdown-menu dropdown-menu-right mailbox animated bounceInDown">
                                <ul class="list-style-none">
                                    <li>
                                        <div class="message-center notifications position-relative">
                                            <!-- Message -->
                                            <a href="javascript:void(0)"
                                                class="message-item d-flex align-items-center border-bottom px-3 py-2">
                                                <div class="btn btn-danger rounded-circle btn-circle"><i
                                                        data-feather="airplay" class="text-white"></i></div>
                                                <div class="w-75 d-inline-block v-middle pl-2">
                                                    <h6 class="message-title mb-0 mt-1">Lunch Admin</h6>
                                                    <span class="font-12 text-nowrap d-block text-muted">Just see the my new admin!</span>
                                                    <span class="font-12 text-nowrap d-block text-muted">9:30 AM</span>
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
                                <span class="ml-2 d-none d-lg-inline-block"></i></span>
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
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
			<div class="page-breadcrumb">
				<div class="row">
					<div class="col-7 align-self-center">
						<h3 class="page-title text-truncate text-dark font-weight-medium mb-1">개발팀</h3>
						<div class="d-flex align-items-center">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb m-0 p-0">
									<li class="breadcrumb-item"><a href="index.html">Development
											Team</a></li>
								</ol>
							</nav>
						</div>
					</div>
					<!-- ============================================================== -->
					<!-- 배열 맞추기 위한 공갈 div -->
					<!-- ============================================================== -->
					<div class="col-2"></div>
					<!-- ============================================================== -->
					<!-- 부서생성 모달버튼 -->
					<!-- ============================================================== -->
					<div class="col-2">
						<div class=" customize-input float-right">
							<!-- Center modal content -->
							<div class="modal fade" id="centermodal" tabindex="-1"
								role="dialog" aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered">
									<div class="modal-content">
										<div class="modal-header">
											<h4 class="modal-title" id="myCenterModalLabel">부서생성</h4>
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">×</button>
										</div>
										<div class="modal-body">
											<div class="col-12 col-6 col-4">
												<div class="card">
													<div class="card-body">
														<form>
															<div class="col-12 form-group mb-4">
																<label class="col-12" for="inlineFormCustomSelect">상위부서</label>
																<select class="custom-select mr-sm-2"
																	id="inlineFormCustomSelect">
																	<option selected>Choose...</option>
																	<option value="1">One</option>
																	<option value="2">Two</option>
																	<option value="3">Three</option>
																</select>
															</div>

															<div class="col-12 form-group mb-4">
																<form class="mt-4">
																	<label class="col-12" for="inlineFormCustomSelect">부서명</label>
																	<div class="form-group">
																		<input type="text" class="form-control"
																			id="placeholder" placeholder="부서명을 입력하세요.">
																	</div>
																</form>
															</div>
															<button type="button"
																class="btn waves-effect waves-light btn-rounded btn-primary"
																data-toggle="modal" data-target="#centermodal">확인</button>
														</form>
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
							<div class="btn-list">
								<!-- Center modal -->
								<button type="button"
									class="btn waves-effect waves-light btn-rounded btn-primary"
									data-toggle="modal" data-target="#centermodal">부서생성</button>
							</div>
						</div>
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
				<!-- *************************************************************** -->
				<!-- Start First Cards -->
				<!-- *************************************************************** -->
				<div class="row">
					<div class="col-2 jumbotron">
						<dl class="list-style-none">
							<dt>경영지원본부</dt>
							<dd>
								<a href="#"><i class="ti-angle-right"></i>인사총무팀</a>
							</dd>
							<dd>
								<a href="#"><i class="ti-angle-right"></i>재경팀</a>
							</dd>
							<dd>
								<a href="#"><i class="ti-angle-right"></i>구매무역팀</a>
							</dd>
							<dt>생산본부</dt>
							<dd>
								<a href="#"><i class="ti-angle-right"></i>공정안정팀</a>
							</dd>
							<dd>
								<a href="#"><i class="ti-angle-right"></i>공정실행팀</a>
							</dd>
						</dl>
					</div>
					<!-- *************************************************************** -->
					<!-- Start First Cards -->
					<!-- *************************************************************** -->
					<div class="col-8 card border-right" style="margin-left: 15px">
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
										<tbody>
											<tr data-toggle="modal" data-target="#scrollable-modal">
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
			<!-- Long Content Scroll Modal -->
			<div class="modal fade" id="scrollable-modal" tabindex="-1"
				role="dialog" aria-labelledby="scrollableModalTitle"
				aria-hidden="true">
				<div class="modal-dialog modal-dialog-scrollable" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="scrollableModalTitle">직원 정보</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body"></div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary">Save
								changes</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
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