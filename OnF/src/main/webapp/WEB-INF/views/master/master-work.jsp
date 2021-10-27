<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html dir="ltr">
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
<title>회사명 - 근태현황</title>
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
						<a href="${root }landing/landing"> <b class="logo-icon"> <!-- Dark Logo icon -->
								<img src="../assets/images/logo-icon.png" alt="homepage"
								class="dark-logo" /> <!-- Light Logo icon --> <img
								src="../assets/images/logo-icon.png" alt="homepage"
								class="light-logo" />
						</b> <!--End Logo icon --> </span>
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
							class="nav-link dropdown-toggle" href="${root }department/dept">
								<i data-feather="key" class="svg-icon"></i> 부서
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
								<a class="dropdown-item" href="javascript:void(0)"><i
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
		<div class="page-wrapper">
			<!-- ============================================================== -->
			<!-- Bread crumb and right sidebar toggle -->
			<!-- ============================================================== -->
			<div class="page-breadcrumb">
				<div class="row">
					<div class="col-7 align-self-center">
						<h4
							class="page-title text-truncate text-dark font-weight-medium mb-1"
							style="font-weight: 800;">직원 근태 현황</h4>
						<div class="d-flex align-items-center">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb m-0 p-0">
									<li class="breadcrumb-item"><a href="index.html"
										class="text-muted">근태 관리</a></li>
									<li class="breadcrumb-item text-muted active"
										aria-current="page">직원 근태 현황</li>
								</ol>
							</nav>
						</div>
					</div>
					<div class="col-5 align-self-center">
						<div class="customize-input float-right">
							<select
								class="custom-select custom-select-set form-control bg-white border-0 custom-shadow custom-radius">
								<option selected>Aug 19</option>
								<option value="1">July 19</option>
								<option value="2">Jun 19</option>
							</select>
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
				<!-- ============================================================== -->
				<!-- Start Page Content -->
				<!-- ============================================================== -->
				<!-- multi-column ordering -->
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<h3 class="card-title" style="font-weight: 700;">전직원 근태 관리</h3>
								<h6 class="card-subtitle" style="padding-top: 5px;">
									모든 직원의 근태 상황을 정렬합니다.
									<!--  <code> columns.orderData</code> option.  -->
								</h6>
								<div class="table table-hover table-responsive">
									<table id="multi_col_order"
										class="table table-striped table-bordered display no-wrap"
										style="width: 100%">
										<thead>
											<tr>
												<th>사번</th>
												<th>성명</th>
												<th>부서</th>
												<th>직급</th>
												<th>출근일수</th>
												<th>지각일수</th>
												<th>결근일수</th>
												<th>총연차</th>
												<th>사용연차</th>
												<th>잔여연차</th>
												<th>입사일자</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>01</td>
												<td data-toggle="modal" data-target="#scrollable-modal">홍길동</td>
												<td>개발팀</td>
												<td>과장</td>
												<td>60</td>
												<td>3</td>
												<td>5</td>
												<td>10</td>
												<td>4</td>
												<td>6</td>
												<td>2021.08.01</td>
											</tr>
											<tr>
												<td>02</td>
												<td>김영희</td>
												<td>개발팀</td>
												<td>부장</td>
												<td>63</td>
												<td>6</td>
												<td>3</td>
												<td>18</td>
												<td>66</td>
												<td>8</td>
												<td>2021.08.01</td>
											</tr>
											<tr>
												<td>03</td>
												<td>박철수</td>
												<td>개발팀</td>
												<td>일반사원</td>
												<td>60</td>
												<td>3</td>
												<td>5</td>
												<td>10</td>
												<td>4</td>
												<td>6</td>
												<td>2021.08.01</td>
											</tr>
										</tbody>
										<tfoot>
											<tr>
												<th>사번</th>
												<th>성명</th>
												<th>부서</th>
												<th>직급</th>
												<th>출근일수</th>
												<th>지각일수</th>
												<th>결근일수</th>
												<th>총연차</th>
												<th>사용연차</th>
												<th>잔여연차</th>
												<th>입사일자</th>
											</tr>
										</tfoot>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- ============================================================== -->
				<!-- End PAge Content -->
				<!-- ============================================================== -->
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
						<div class="modal-body">
							<div class="row">
								<div class="col-12">
									<div class="card">
										<div class="card-body">
											<h3 class="card-title">{직원명}</h3>
											<br />
											<form action="#">
												<div class="form-body">
													<label>소속부서</label>
													<div class="row">
														<div class="col-md-12">
															<div class="form-group">
																<input type="text" class="form-control" placeholder="소속부서" disabled>
															</div>
														</div>
													</div>
													<label>직급 / 근속연수</label>
													<div class="row">
														<div class="col-md-6">
															<div class="form-group">
																<input type="text" class="form-control" placeholder="직급" disabled>
															</div>
														</div>
														<div class="col-md-6">
															<div class="form-group">
																<input type="text" class="form-control" placeholder="근속년수" disabled>
															</div>
														</div>
													</div>
													<label>고용 형태</label>
													<div class="row">
														<div class="col-md-12">
															<div class="form-group">
																<input type="text" class="form-control"
																	placeholder="고용 형태" disabled>
															</div>
														</div>
													</div>
													<label>근무 유형</label>
													<div class="row">
														<div class="col-md-12">
															<div class="form-group">
																<input type="text" class="form-control"
																	placeholder="근무 유형" disabled>
															</div>
														</div>
													</div>
													<label>내선 번호</label>
													<div class="row">
														<div class="col-md-12">
															<div class="form-group">
																<input type="tel" class="form-control"
																	placeholder="내선 번호" disabled>
															</div>
														</div>
													</div>
													<label>입사일자</label>
													<div class="row">
														<div class="col-md-12">
															<div class="form-group">
																<input type="date" class="form-control"
																	placeholder="입사일자" disabled>
															</div>
														</div>
													</div>
													<label>이메일</label>
													<div class="row">
														<div class="col-md-12">
															<div class="form-group">
																<input type="email" class="form-control"
																	placeholder="이메일" disabled>
															</div>
														</div>
													</div>
													<label>거주지</label>
													<div class="row">
														<div class="col-md-12">
															<div class="form-group">
																<input type="text" class="form-control"
																	placeholder="거주지" disabled>
															</div>
														</div>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
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
	<!--This page plugins -->
	<script
		src="../assets/extra-libs/datatables.net/js/jquery.dataTables.min.js"></script>
	<script src="../dist/js/pages/datatable/datatable-basic.init.js"></script>
</body>

</html>