
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
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
<!--  탑메뉴  -->
    <div id="main-wrapper" data-theme="light" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full" data-sidebar-position="fixed" data-header-position="fixed" data-boxed-layout="full">
       
        <header class="topbar" data-navbarbg="skin6">
            <nav class="navbar top-navbar navbar-expand-md">
                <div class="navbar-header" data-logobg="skin6">
                  
                    <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i
                            class="ti-menu ti-close"></i></a>
                 
                    <div class="navbar-brand">
                       
                        <a href="index.html">
                            <b class="logo-icon">
                             
                                <img src="../assets/images/logo-icon.png" alt="homepage" class="dark-logo" />
                                
                                <img src="../assets/images/logo-icon.png" alt="homepage" class="light-logo" />
                            </b>
                           
                            <span class="logo-text">
                              
                                <img src="../assets/images/logo-text.png" alt="homepage" class="dark-logo" />
                                
                                <img src="../assets/images/logo-light-text.png" class="light-logo" alt="homepage" />
                            </span>
                        </a>
                    </div>
                
                
                    <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)"
                        data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i
                            class="ti-more"></i></a>
                </div> 
               <!--  ==============================================================
                End Logo
                ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent">
                 <!--    ==============================================================
                    toggle and nav items
                    ============================================================== -->
                    <ul class="navbar-nav float-left mr-auto ml-3 pl-1">
                       <!--  Notification -->
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
                                            Message
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
                                            Message
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
                                            Message
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
                                            Message
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
                 <!--        End Notification
                        ==============================================================
                        create new
                        ============================================================== -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i data-feather="settings" class="svg-icon"></i>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </li>
                        <li class="nav-item d-none d-md-block">
                            <a class="nav-link" href="javascript:void(0)">
                                <div class="customize-input">
                                    <select
                                        class="custom-select form-control bg-white custom-radius custom-shadow border-0">
                                        <option selected>EN</option>
                                        <option value="1">AB</option>
                                        <option value="2">AK</option>
                                        <option value="3">BE</option>
                                    </select>
                                </div>
                            </a>
                        </li>
                    </ul>
                   <!--  ==============================================================
                    Right side toggle and nav items
                    ============================================================== -->
                    <ul class="navbar-nav float-right">
                      <!--   ==============================================================
                        Search
                        ============================================================== -->
                        <li class="nav-item d-none d-md-block">
                            <a class="nav-link" href="javascript:void(0)">
                                <form>
                                    <div class="customize-input">
                                        <input class="form-control custom-shadow custom-radius border-0 bg-white"
                                            type="search" placeholder="Search" aria-label="Search">
                                        <i class="form-control-icon" data-feather="search"></i>
                                    </div>
                                </form>
                            </a>
                        </li>
                      <!--   ==============================================================
                        User profile and search
                        ============================================================== -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                <img src="../assets/images/users/profile-pic.jpg" alt="user" class="rounded-circle"
                                    width="40">
                                <span class="ml-2 d-none d-lg-inline-block"><span>My</span> <span
                                        class="text-dark">임형주</span> <i data-feather="chevron-down"
                                        class="svg-icon"></i></span>
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
                       <!--  ==============================================================
                        User profile and search
                        ============================================================== -->
                    </ul>
                </div>
            </nav>
        </header>
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
						<h2
							class="page-title text-truncate text-dark font-weight-medium mb-1">
							휴가 승인</h2>
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
			<br /> <br />
			<div class="row">
				<div class="col-sm-12 col-md-9"></div>
				<div  style="algin:right">
							<button type="button"
								class="btn waves-effect waves-light btn-rounded btn-primary">승인</button>
							<button type="button"
								class="btn waves-effect waves-light btn-rounded btn-danger">거절</button>
				</div>
			</div>
			<br />
			<div class="row">
				<div class="col-sm-12 col-md-1"></div>
				<div class="col-sm-12 col-md-10">


				<form action="#" ></form>
					
					<table id="example-table-1"  
						class="table table-sm mb-0">
						<thead>
							<tr>
								<th></th>
								<th>No.</th>
								<th>이름명</th>
								<th>휴가명</th>
								<th>부서명</th>
								<th>시작일자</th>
								<th>종료일자</th>
								<th>승인여부</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td> <input type="checkbox" value=""  ></td>
								
								<td>1</td>
								
								<td>
									<button type="button" class="form-control"
										data-toggle="tooltip" data-placement="bottom" title=""
										data-original-title="사유: 잠시 자유롭고 싶습니다.">임형주</button>
								</td>
								<td>연차</td>
								<td>부서명</td>
								<td>2021-10-02</td>
								<td>2021-10-30</td>
								<td>
									 <button type="button" class="btn btn-success btn-circle" onclick="location.href = '#' ">
										<i class="fa fa-check"></i>
									</button>

									<button type="button" class="btn btn-danger btn-circle" onclick="location.href = '#' ">
										<i class="fa fa-times"></i>
									</button>
								</td>
							</tr>
							<tr>
								<td> <input type="checkbox" value=""  ></td>
								
								<td>2</td>
								
								<td>
									<button type="button" class="form-control"
										data-toggle="tooltip" data-placement="bottom" title=""
										data-original-title="사유: 둘리가 호이합니다.">고길동</button>
								</td>
								<td>연차</td>
								<td>부서명</td>
								<td>2021-10-02</td>
								<td>2021-10-30</td>
								<td>
									 <button type="button" class="btn btn-success btn-circle" onclick="location.href = '#' ">
										<i class="fa fa-check"></i>
									</button>

									<button type="button" class="btn btn-danger btn-circle" onclick="location.href = '#' ">
										<i class="fa fa-times"></i>
									</button>
								</td>
							</tr>
							<tr>
								<td> <input type="checkbox" value=""  ></td>
								
								<td>3</td>
								
								<td>
									<button type="button" class="form-control"
										data-toggle="tooltip" data-placement="bottom" title=""
										data-original-title="사유: 고길동 아저씨 찾으러 갑니다.">둘리</button>
								</td>
								<td>연차</td>
								<td>부서명</td>
								<td>2021-10-02</td>
								<td>2021-10-30</td>
								<td>
									 <button type="button" class="btn btn-success btn-circle" onclick="location.href = '#' ">
										<i class="fa fa-check"></i>
									</button>

									<button type="button" class="btn btn-danger btn-circle" onclick="location.href = '#' ">
										<i class="fa fa-times"></i>
									</button>
								</td>
							</tr>
							<tr>
								<td> <input type="checkbox" value=""  ></td>
								
								<td>4</td>
								
								<td>
									<button type="button" class="form-control"
										data-toggle="tooltip" data-placement="bottom" title=""
										data-original-title="사유: 잠시 자유롭고 싶습니다.">임형주</button>
								</td>
								<td>연차</td>
								<td>부서명</td>
								<td>2021-10-02</td>
								<td>2021-10-30</td>
								<td>
									 <button type="button" class="btn btn-success btn-circle" onclick="location.href = '#' ">
										<i class="fa fa-check"></i>
									</button>

									<button type="button" class="btn btn-danger btn-circle" onclick="location.href = '#' ">
										<i class="fa fa-times"></i>
									</button>
								</td>
							</tr>
							<tr>
								<td> <input type="checkbox" value=""  ></td>
								
								<td>5</td>
								
								<td>
									<button type="button" class="form-control"
										data-toggle="tooltip" data-placement="bottom" title=""
										data-original-title="사유: 잠시 자유롭고 싶습니다.">임형주</button>
								</td>
								<td>연차</td>
								<td>부서명</td>
								<td>2021-10-02</td>
								<td>2021-10-30</td>
								<td>
									 <button type="button" class="btn btn-success btn-circle" onclick="location.href = '#' ">
										<i class="fa fa-check"></i>
									</button>

									<button type="button" class="btn btn-danger btn-circle" onclick="location.href = '#' ">
										<i class="fa fa-times"></i>
									</button>
								</td>
							</tr>
						</tbody>           
                                
					</table>
					 
				</div>
				 
				<div class="col-sm-12 col-md-4"></div>
				<div class="col-lg-6 mb-4">
                                   <br />
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