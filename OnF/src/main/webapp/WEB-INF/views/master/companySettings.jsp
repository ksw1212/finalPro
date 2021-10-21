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
	<title>CompanySettings</title>
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
                            <a class="nav-link dropdown-toggle" href="${root }department/mydept">
                                <i data-feather="key" class="svg-icon"></i>
                               	부서
                            </a>
                        </li>
                        <!-- ============================================================== -->
                        <!-- 상단메뉴 설정버튼 -->
                        <!-- ============================================================== -->
                        <li class="nav-item">
                            <a class="nav-link" href="${root }master/master-emp" >
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
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="mydept.jsp"
                                aria-expanded="false"><i data-feather="home" class="feather-icon"></i><span
                                    class="hide-menu">Dashboard</span></a></li>
                        <li class="list-divider"></li>
                        <li class="nav-small-cap"><strong style="font-weight:800" class="hide-menu">직원 관리</strong></li>

                        <li class="sidebar-item"> 
                        	<a class="sidebar-link" href="master-emp.jsp" aria-expanded="false">
                        		<i data-feather="tag" class="feather-icon"></i>
                        		<span class="hide-menu"> 직원 목록 </span>
                        	</a>
                        </li>
                        <li class="sidebar-item"> 
                        	<a class="sidebar-link sidebar-link" href="#" aria-expanded="false">
                        		<i data-feather="message-square" class="feather-icon"></i>
                        		<span class="hide-menu">퇴사자 관리</span></a>
                        </li>
                        <li class="list-divider"></li>
                        <li class="nav-small-cap"><strong style="font-weight:800" class="hide-menu">휴가 관리</strong></li>

                        <li class="sidebar-item"> 
                        	<a class="sidebar-link" href="${root}master/vaq_approve" aria-expanded="false">
                        		<i data-feather="tag" class="feather-icon"></i>
                        		<span class="hide-menu"> 휴가 목록 </span>
                        	</a>
                        </li>
                        <li class="list-divider"></li>
                        <li class="nav-small-cap"><strong style="font-weight:800" class="hide-menu">부서 관리</strong></li>
                        <li class="sidebar-item"> 
                        	<a class="sidebar-link" href="#" aria-expanded="false">
                        		<i data-feather="tag" class="feather-icon"></i>
                        		<span class="hide-menu"> 부서 목록 </span>
                        	</a>
                        </li>
                         <li class="list-divider"></li>
                        <li class="nav-small-cap"><strong style="font-weight:800" class="hide-menu">근태 관리</strong></li>
                        <li class="sidebar-item"> 
                        	<a class="sidebar-link" href="#" aria-expanded="false">
                        		<i data-feather="tag" class="feather-icon"></i>
                        		<span class="hide-menu"> 근무 유형 목록 </span>
                        	</a>
                        </li>
                        <li class="list-divider"></li>
                        
                        <li class="nav-small-cap">
                        	<span class="hide-menu">회사 설정</span>
                        </li>
                        <li class="sidebar-item"> 
                        	<a class="sidebar-link sidebar-link" href="${root }master/companySetting" aria-expanded="false">
                        		<i class="icon-action-redo"></i>
                        		<span class="hide-menu">마스터 변경</span>
                        	</a>
                        </li>
                        <li class="sidebar-item"> 
                        	<a class="sidebar-link sidebar-link" href="${root }master/companyDelete" aria-expanded="false">
                        		<i class="fas fa-trash-alt"></i>
                        		<span class="hide-menu">회사 삭제</span>
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
           
			<div class="page-breadcrumb">
				<div class="row">
					<div class="col-sm-12 col-md-6 col-lg-4">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">마스터 변경</h4>
                                
                                <form>
                                    <div class="form-group mb-4">
                                        
                                        <select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
                                            <option selected>마스터 선택</option>
                                            <option value="1">홍길동</option>
                                            <option value="2">조영진</option>
                                            <option value="3">김철수</option>
                                        </select>
                                        <br>
                                        <button type="button" class="btn btn-primary" data-toggle="modal"
                                        data-target="#myModal">변경</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
				</div>
					</div>
        </div>
        
        
    <!-- ============================================================== -->
    <!-- End Wrapper -->
     <div id="myModal" class="modal fade" tabindex="-1" role="dialog"
                                    aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title" id="myModalLabel">Modal Heading</h4>
                                                <button type="button" class="close" data-dismiss="modal"
                                                    aria-hidden="true">×</button>
                                            </div>
                                            <div class="modal-body">
                                                <h4>진짜 변경하시겠습니까?</h4>
                                               
                                                
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-light"
                                                    data-dismiss="modal">닫기</button>
                                                <button type="button" class="btn btn-primary">확인</button>
                                            </div>
                                        </div><!-- /.modal-content -->
                                    </div><!-- /.modal-dialog -->
                                </div><!-- /.modal -->
    
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