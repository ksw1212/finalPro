<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <c:import url="/WEB-INF/views/include/left-side-bar.jsp"/>
        <div class="page-wrapper">
        <div
		class="auth-wrapper d-flex no-block justify-content-center align-items-center position-relative"
		>
		<div class="container-fluid row">
			<div class="col-md-4 "></div>
			<div class="col-md-6 bg-white">
				<h2 class="mt-5 text-center">회원정보 수정</h2>
				<p class="text-center"></p>
				<hr style="background-color: #5f76e8" />

				<form:form class="mt-4" action="${root}user/mypage_modify_pro" method="post" modelAttribute="getmodifyUserBean">
								<h4 class="card-title">사용자 이름</h4>
								<div class="form-group">
									<form:input path="user_name" class="form-control" readonly="readonly"/>
									
								</div>
								<br />
								<h4 class="card-title">사용자 이메일</h4>
								<div class="form-group">
									<form:input path="user_email" class="form-control" readonly="readonly"/>
									
								</div>
								<br />
								<h4 class="card-title">사용자 주소</h4>
								<div class="form-group">
									<form:input path="user_addr1" class="form-control"/>
									
								</div>
								<br />
								<h4 class="card-title">사용자 상세주소</h4>
								<div class="form-group">
									<form:input path="user_addr2" class="form-control"/>
									
								</div>
								<br />
								<h4 class="card-title">사용자 연락처</h4>
								<div class="form-group">
									<form:input path="user_tel" class="form-control"/>
									
								</div>
								<br />
							
						<form:button class="btn waves-effect waves-light btn-rounded btn-primary" style="float: center ">수정하기</form:button>
								
				</form:form>
			</div>
		</div>
		<div class="col-3"></div>
	</div>
	</div>
     </div>   
    
	<!-- 직접입력누르면 텍스트박스 활성화 기능구현 제이쿼리문 -->
<!-- <script type="text/javascript">
  function InsertTitle(str) {
  if (str != "") {
   document.getElementById("vac_minus").value = str;
   document.getElementById("vac_minus").readOnly = true;
   document.getElementById("vac_minus").style.background = "#DFDFDF";
  } else {
   document.getElementById("vac_minus").value = "";
   document.getElementById("vac_minus").readOnly = false;
   document.getElementById("vac_minus").style.background = "#FFFFFF";
   document.getElementById("vac_minus").focus();
  }
 }
</script> -->




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