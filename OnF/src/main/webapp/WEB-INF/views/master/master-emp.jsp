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
	<title>admin-emp</title>
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
                        <!-- ???????????? ????????? -->
                        <!-- ============================================================== -->
                    	<li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="${root}main">
                            	<i class="icon-home"></i>
                               	???
                            </a>
                        </li>
                        <!-- ============================================================== -->
                        <!-- ???????????? ???????????? -->
                        <!-- ============================================================== -->
                    	<li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#">
		                        <i class="icon-book-open"></i>
                               	??????
                            </a>
                        </li>
                        <!-- ============================================================== -->
                        <!-- ???????????? ???????????? -->
                        <!-- ============================================================== -->
                    	<li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#">
		                        <i class="icon-plane"></i>
                               	??????
                            </a>
                        </li>
                        <!-- ============================================================== -->
                        <!-- ???????????? ?????????????????? -->
                        <!-- ============================================================== -->
                    	<li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#">
                            	<i class="icon-briefcase"></i>
                               	????????????
                            </a>
                        </li>
                    	<!-- ============================================================== -->
                        <!-- ???????????? ???????????? -->
                        <!-- ============================================================== -->
                    	<li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="${root }department/mydept">
                                <i data-feather="key" class="svg-icon"></i>
                               	??????
                            </a>
                        </li>
                        <!-- ============================================================== -->
                        <!-- ???????????? ???????????? -->
                        <!-- ============================================================== -->
                        <li class="nav-item">
                            <a class="nav-link" href="${root }master/master_emp" >
                                <i data-feather="settings" class="svg-icon"></i>
                                ?????????
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
        <c:import url="/WEB-INF/views/include/left-side-bar_emp.jsp"/>
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
					<div class="col-6 align-self-center">
						<h3 class="page-title text-truncate text-dark font-weight-medium mb-1">???????????? ??????</h3>
						<div class="d-flex align-items-center">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb m-0 p-0">
									<li class="breadcrumb-item"><a href="#">Employee List</a></li>
								</ol>
							</nav>
						</div>
					</div>
					<!-- ============================================================== -->
					<!-- ?????? ????????? ?????? ?????? div -->
					<!-- ============================================================== -->
					<div class="col-2"></div>
					<!-- ============================================================== -->
					<!-- ???????????? ???????????? -->
					<!-- ============================================================== -->
					<div class="col-3">
						<div class=" customize-input float-right">
							<!-- Center modal content -->
							<div class="modal fade" id="centermodal1" tabindex="-1"
								role="dialog" aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered">
									<div class="modal-content">
										<div class="modal-header">
											<h4 class="modal-title" id="myCenterModalLabel"><i class="icon-user-follow"></i>&nbsp;&nbsp;&nbsp;???????????? ?????? </h4>
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">??</button>
										</div>
										<div class="modal-body">
											<div class="col-12 col-6 col-4">
												<form>
													<div class="col-12 form-group mb-4">
														<h6 style="font-weight: 800">???????????? ??????</h6>
														<span>???&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;???&nbsp;&nbsp;&nbsp;&nbsp;<input
															type="text" placeholder="?????? ??????" /></span>
													</div>
													<div class="col-12 form-group mb-4">
														<span>???&nbsp;&nbsp;&nbsp;&nbsp;???&nbsp;&nbsp;&nbsp;&nbsp;???&nbsp;&nbsp;&nbsp;&nbsp;<input
															type="text" placeholder="?????? ??????" /></span>
													</div>
													<div class="col-12 form-group mb-4">
														<span>???????????????&nbsp;&nbsp;&nbsp;&nbsp;<input
															type="text" placeholder="?????? ??????" /></span>
													</div>
													<p></p>
													<div class="col-12 form-group mb-4">
														<h6 style="font-weight: 800">???????????? ??????</h6>
														<span>????????????&nbsp;&nbsp;&nbsp;&nbsp; <select
															class="col-8 custom-select" id="inlineFormCustomSelect">
																<option selected>????????????</option>
																<option value="1">One</option>
																<option value="2">Two</option>
																<option value="3">Three</option>
														</select>
														</span>
													</div>
													<div class="col-12 form-group mb-4">
														<span>????????????&nbsp;&nbsp;&nbsp;&nbsp; <select
															class="col-8 custom-select" id="inlineFormCustomSelect">
																<option value="1">?????????</option>
																<option value="2">?????????</option>
														</select>
														</span>
													</div>
													<div class="col-12 form-group mb-4">
														<span>????????????&nbsp;&nbsp;&nbsp;&nbsp; <select
															class="col-8 custom-select" id="inlineFormCustomSelect">
																<option value="1">??????-??????</option>
																<option value="2">??????-??????</option>
														</select>
														</span>
													</div>
													<div class="col-12 form-group mb-4">
														<span>???&nbsp;&nbsp;???&nbsp;&nbsp;???&nbsp;&nbsp;&nbsp;&nbsp;
															<input type="date" class="col-8 custom-select"
															value="2008-05-13">
														</span>
													</div>
													<div class="col-12 form-group mb-4"></div>
													<button type="button"
														class="btn waves-effect waves-light btn-rounded btn-primary"
														data-toggle="modal" data-target="#centermodal" style="float: right;">??????</button>
												</form>
											</div>
										</div>
									</div>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal-dialog -->
							</div>
							<!-- /.modal1 -->
							<div class="modal fade" id="centermodal2" tabindex="-1"
								role="dialog" aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered">
									<div class="modal-content">
										<div class="modal-header">
											<h4 class="modal-title" id="myCenterModalLabel"> ???????????? ?????? </h4>
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">??</button>
										</div>
										<div class="modal-body">
											<div class="col-12 col-6 col-4">
												<form>
													<div class="col-12 form-group mb-4">
														<label class="col-12" for="inlineFormCustomSelect">????????????</label>
														<select class="custom-select mr-sm-2"
															id="inlineFormCustomSelect">
															<option selected>Choose...</option>
															<option value="1">One</option>
															<option value="2">Two</option>
															<option value="3">Three</option>
														</select>
													</div>
													<div class="col-12 form-group mb-4">
														<label class="col-12" for="inlineFormCustomSelect">?????????</label>
														<div class="form-group">
															<input type="text" class="form-control" id="placeholder"
																placeholder="???????????? ???????????????.">
														</div>
													</div>
													<button type="button"
														class="btn waves-effect waves-light btn-rounded btn-primary"
														data-toggle="modal" data-target="#centermodal"
														style="float: right;">??????</button>
												</form>
											</div>
										</div>
									</div>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal-dialog -->
							</div>
							<div class="btn-list">
								<!-- Center modal -->
								<button type="button"
									class="btn waves-effect waves-light btn-rounded btn-primary"
									data-toggle="modal" data-target="#centermodal1"> ???????????? ??????</button>
								<button type="button" 
									class="btn waves-effect waves-light btn-rounded btn-outline-danger" 
									data-toggle="modal" data-target="#centermodal2" > ???????????? ??????</button>
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
					
				<!-- *************************************************************** -->
                <!-- Start First Cards -->
                <!-- *************************************************************** -->
                    <div class="col-11 card border-right" style="margin-left:15px">
						<div class="align-items-center">
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-hover">
										<thead>
											<tr>
												<td></td>
												<td><input type="text" placeholder="Status"></td>
												<td><input type="text" placeholder="Emp-Num"></td>
												<td><input type="text" placeholder="Name"></td>
												<td><input type="text" placeholder="E-mail"></td>
												<td><input type="text" placeholder="Dept"></td>
												<td><input type="text" placeholder="Contract"></td>
											</tr>
											<tr class="bg-primary text-white" style="text-align:center">
												<th><input type="checkbox" class="checkbox"/></th>
												<th>??????</th>
												<th>??????</th>
												<th>??????</th>
												<th>?????????</th>
												<th>??????</th>
												<th>????????????</th>
											</tr>
										</thead>
										<tbody style="text-align:center">
											<tr >
												<th><input type="checkbox" class="checkbox"/></th>
												<td data-toggle="modal" data-target="#scrollable-modal">1</td>
												<td data-toggle="modal" data-target="#scrollable-modal">Nigam</td>
												<td data-toggle="modal" data-target="#scrollable-modal">??????</td>
												<td data-toggle="modal" data-target="#scrollable-modal">7011</td>
												<td data-toggle="modal" data-target="#scrollable-modal">7011</td>
												<td data-toggle="modal" data-target="#scrollable-modal">7011</td>
											</tr>
											<tr>
												<th><input type="checkbox" class="checkbox" /></th>
												<td>2</td>
												<td>Deshmukh</td>
												<td>Prohaska</td>
												<td>@Genelia</td>
												<td>@Genelia</td>
												<td>@Genelia</td>
											</tr>
											<tr>
												<th><input type="checkbox" class="checkbox" /></th>
												<td>3</td>
												<td>Roshan</td>
												<td>Rogahn</td>
												<td>@Hritik</td>
												<td>@Hritik</td>
												<td>@Hritik</td>
											</tr>
											<tr>
												<th><input type="checkbox" class="checkbox" /></th>
												<td>1</td>
												<td>Nigam</td>
												<td>??????</td>
												<td>7011</td>
												<td>7011</td>
												<td>7011</td>
											</tr>
											<tr>
												<th><input type="checkbox" class="checkbox" /></th>
												<td>2</td>
												<td>Deshmukh</td>
												<td>Prohaska</td>
												<td>@Genelia</td>
												<td>@Genelia</td>
												<td>@Genelia</td>
											</tr>
											<tr>
												<th><input type="checkbox" class="checkbox" /></th>
												<td>3</td>
												<td>Roshan</td>
												<td>Rogahn</td>
												<td>@Hritik</td>
												<td>@Hritik</td>
												<td>@Hritik</td>
											</tr>
										</tbody>
									</table>
								</div>
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
					<!-- ============================================================== -->
					<!-- ????????? ????????? ?????? ?????? div  -->
					<!-- ============================================================== -->
					<div class="col-1"></div>
				</div>
            </div>
            <!-- Long Content Scroll Modal -->
			<div class="modal fade" id="scrollable-modal" tabindex="-1"
				role="dialog" aria-labelledby="scrollableModalTitle"
				aria-hidden="true">
				<div class="modal-dialog modal-dialog-scrollable" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="scrollableModalTitle">?????? ??????</h5>
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