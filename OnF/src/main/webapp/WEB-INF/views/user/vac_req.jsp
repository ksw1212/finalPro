<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html dir="ltr" lang="en">

<head >
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../assets/images/favicon.png">
    <title>Adminmart Template - The Ultimate Multipurpose admin template</title>
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
   <!--  ==============================================================
    Preloader - style you can find in spinners.css
    ============================================================== -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
 <!--    ==============================================================
    Main wrapper - style you can find in pages.scss
    ============================================================== -->
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
                            <a class="nav-link dropdown-toggle" href="main">
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
                            <a class="nav-link dropdown-toggle" href="${root }department/mydept">
                                <i data-feather="key" class="svg-icon"></i>
                               	부서
                            </a>
                        </li>
                        <!-- ============================================================== -->
                        <!-- 상단메뉴 설정버튼 -->
                        <!-- ============================================================== -->
                        <li class="nav-item">
                            <a class="nav-link" href="${root }master/master_emp" >
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
        <c:import url="/WEB-INF/views/include/left-side-bar.jsp"/>
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
						<h2
							class="page-title text-truncate text-dark font-weight-medium mb-1">
							휴가 신청</h2>
						<div class="d-flex align-items-center">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb m-0 p-0">
									<li class="breadcrumb-item"><a href="index.html"
										class="text-muted">Home</a></li>
									<li class="breadcrumb-item text-muted active"
										aria-current="page">Library</li>
								</ol>
							</nav>
						</div>


					</div>

				</div>
			</div>

			<!-- 휴가생성 모달버튼 -->
			<div class="row">
				<div class="col-sm-12 col-md-10"></div>
				<div class="col-sm-12 col-md-2">
					<form action="vec_req_pro">
						<div class="modal fade" id="scrollable-modal" tabindex="-1"
							role="dialog" aria-labelledby="scrollableModalTitle"
							aria-hidden="true">
							<div class="modal-dialog modal-dialog-scrollable" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="scrollableModalTitle">휴가 신청서</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
										<!-- 휴가유형 -->
										<div class="form-group mb-4">
											<label class="mr-sm-2" for="inlineFormCustomSelect">휴가
												선택</label> <select class="custom-select mr-sm-2"
												id="inlineFormCustomSelect">
												<option selected>휴가 유형</option>
												<option value="1">연차</option>
												<option value="2">반차</option>
												<option value="3">육아휴가</option>
												<option value="4">특별휴가</option>
											</select>
										</div>
										<!-- 휴가 시작일 -->
										<div class="card">
											<div class="card-body">
												<h4 class="card-title">시작일 선택하기</h4>
												<form class="mt-4">
													<div class="form-group">
														<input type="date" class="form-control" value="date">
													</div>
												</form>
											</div>
										</div>
										<!-- 휴가 종료일 -->
										<div class="card">
											<div class="card-body">
												<h4 class="card-title">종료일 선택하기</h4>
												<form class="mt-4">
													<div class="form-group">
														<input type="date" class="form-control" value="date">
													</div>
												</form>
											</div>
										</div>


										<!-- 휴가승인자 -->
										<div class="form-group mb-4">
											<label class="mr-sm-2" for="inlineFormCustomSelect">승인자
												선택</label> <select 
												id="inlineFormCustomSelect">
												<option selected>-------</option>
												<option value="1">규리샘</option>
												<option value="2">임우연</option>
												<option value="3">임형주</option>
												<option value="4">마스터</option>
											</select>
										</div>

										<h4 class="card-title">사유</h4>
										<form class="mt-3">
											<div class="form-group">
												<textarea class="form-control" rows="3"></textarea>
											</div>
										</form>
									</div>

									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">Close</button>
										<button type="submit" class="btn btn-primary">요청하기</button>
									</div>

								</div>
								<!-- /.modal-content -->
							</div>
							<!-- /.modal-dialog -->

						</div>
						<!-- /.modal -->


						<div class="btn-list">

							<button type="button" class=" btn btn-rounded btn-primary"
								data-toggle="modal" data-target="#scrollable-modal">휴가
								신청하기</button>
						</div>
					</form>



				</div>
			</div>

			<br /> <br />
			<div class="row">
				<div class="col-sm-12 col-md-1"></div>
				<div class="col-sm-12 col-md-10">



					
					<table id="example-table-1" width="100%"
						class="table table-bordered table-hover text-center">
						<thead>
							<tr>
								<th>No.</th>
								<th>이름</th>
								<th>휴가명</th>
								<th>부서명</th>
								<th>시작일자</th>
								<th>종료일자</th>
								<th>승인권자</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>임형주</td>
								<td>연차</td>
								<th>부서명</th>
								<td>2021-10-02</td>
								<td>2021-10-30</td>
								<th>임우연</th>
							</tr>
							<tr>
								<td>2</td>
								<td>고길동</td>
								<td>연차</td>
								<th>부서명</th>
								<td>2021-10-02</td>
								<td>2021-10-06</td>
								<th>임우연</th>
							</tr>
							<tr>
								<td>3</td>
								<td>둘리</td>
								<td>연차</td>
								<th>부서명</th>
								<td>2021-10-07</td>
								<td>2021-10-08</td>
								<th>임우연</th>
							</tr>
							
							<tr>
								<td>4</td>
								<td>도우너</td>
								<td>연차</td>
								<th>부서명</th>
								<td>2021-10-09</td>
								<td>2021-10-15</td>
								<th>임우연</th>
							</tr>
						</tbody>
					</table>
				</div>
				<br /><br />
				<div class="col-sm-12 col-md-5"></div>
				<div class="col-lg-6 mb-4">
                                      
                                        <nav aria-label="Page navigation example">
                                            <ul class="pagination">
                                                <li class="page-item">
                                                    <a class="page-link" href="javascript:void(0)"
                                                        aria-label="Previous">
                                                        <span aria-hidden="true">&laquo;</span>
                                                        <span class="sr-only">Previous</span>
                                                    </a>
                                                </li>
                                                <li class="page-item"><a class="page-link"
                                                        href="javascript:void(0)">1</a></li>
                                                <li class="page-item"><a class="page-link"
                                                        href="javascript:void(0)">2</a></li>
                                                <li class="page-item"><a class="page-link"
                                                        href="javascript:void(0)">3</a></li>
                                                <li class="page-item">
                                                    <a class="page-link" href="javascript:void(0)" aria-label="Next">
                                                        <span aria-hidden="true">&raquo;</span>
                                                        <span class="sr-only">Next</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </nav>
                                    </div>
			</div>
		</div>
			<!-- ============================================================== -->
			<!-- End PAge Content -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
			<!-- Right sidebar -->
			<!-- ============================================================== -->
			<!-- .right-sidebar -->
			<!-- ============================================================== -->
			<!-- End Right sidebar -->
			<!-- ============================================================== -->
		</div>
		<!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer text-center text-muted">
            	이용해주셔서 감사합니다.<br>
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
    <script src="../assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="../assets/extra-libs/sparkline/sparkline.js"></script>
    <!--Wave Effects -->
    <!-- themejs -->
    <!--Menu sidebar -->
    <script src="../dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="../dist/js/custom.min.js"></script>
</body>

</html>