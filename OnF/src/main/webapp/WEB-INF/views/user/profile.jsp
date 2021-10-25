<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="root" value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
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
    <div id="main-wrapper" data-theme="light" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full" data-sidebar-position="fixed" data-header-position="fixed" data-boxed-layout="full">
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
                        <a href="index.html">
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
                        <!-- ============================================================== -->
                        <!-- Search -->
                        <!-- ============================================================== -->
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
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                <img src="../assets/images/users/profile-pic.jpg" alt="user" class="rounded-circle"
                                    width="40">
                                <span class="ml-2 d-none d-lg-inline-block"><span>Hello,</span> <span
                                        class="text-dark">Jason Doe</span> <i data-feather="chevron-down"
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
                        <li class="list-divider"></li>
                        <li class="nav-small-cap"><span class="hide-menu">Components</span></li>
                        <li class="sidebar-item"> <a class="sidebar-link has-arrow" href="javascript:void(0)"
                                aria-expanded="false"><i data-feather="file-text" class="feather-icon"></i><span
                                    class="hide-menu">My Page </span></a>
                            <ul aria-expanded="false" class="collapse  first-level base-level-line">
                                <li class="sidebar-item"><a href="${root }user/mypage" class="sidebar-link"><span
                                            class="hide-menu"> My Page 홈
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="${root }user/profile" class="sidebar-link"><span
                                            class="hide-menu"> 상세정보
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="${root }user/mypage_password" class="sidebar-link"><span
                                            class="hide-menu"> 비밀번호 변경
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="${root }user/mypage_modify" class="sidebar-link"><span
                                            class="hide-menu"> 회원정보 수정
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="${root }user/mypage_withdraw" class="sidebar-link"><span
                                            class="hide-menu"> 회원탈퇴
                                        </span></a>
                                </li>
                            </ul>
                        </li>
                        <li class="list-divider"></li>
                        <li class="nav-small-cap"><span class="hide-menu">Extra</span></li>
                        
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="${root }user/logout"
                                aria-expanded="false"><i data-feather="log-out" class="feather-icon"></i><span
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
                        <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">상세 정보</h4>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb m-0 p-0">
                                    <li class="breadcrumb-item"><a href="${root }user/mypage" class="text-muted">마이페이지</a></li>
                                    <li class="breadcrumb-item"><a href="${root }user/profile" class="text-muted">상세정보</a></li>
                                    <li class="breadcrumb-item"><a href="${root }user/mypage_password" class="text-muted">비밀번호 변경</a></li>
                                    <li class="breadcrumb-item"><a href="${root }user/mypage_modify" class="text-muted">회원정보 수정</a></li>
                                    <li class="breadcrumb-item"><a href="${root }user/mypage_withdraw" class="text-muted">회원탈퇴</a></li>
                                    
                                  
                                </ol>
                            </nav>
                        </div>
                    </div>
                    <div class="col-5 align-self-center">
                        <div class="customize-input float-right">
                            <select class="custom-select custom-select-set form-control bg-white border-0 custom-shadow custom-radius">
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
                <div class="row">
                    <div class="col-6"  style="margin:0 auto">
                        <div class="card">
                            <div class="table-responsive">
                                <table class="table" >
                                	<thead>
                                	<tr>
                                	<td>개인정보</td>
                                	</tr>
                                	</thead>
                                    <tbody>
                                        <tr>
                                            <td>이름</td>
                                            <td><input type="text" name="user_name" id="user_name" value="${selectUserBean.user_name }" readonly="readonly" /></td>
                                        </tr>
                                        <tr>
                                            <td>연락처</td>
                                            <td><input type="text" name="user_tel" id="user_tel" value="${selectUserBean.user_tel }" readonly="readonly"/></td>
                                        </tr>
                                        <tr>
                                            <td>주소</td>
                                            <td><input type="text" name="user_addr1" id="user_addr1" value="${selectUserBean.user_addr1 }" readonly="readonly"/></td>
                                        </tr>
                                         <tr>
                                            <td>상세주소</td>
                                            <td><input type="text" name="user_addr2" id="user_addr2" value="${selectUserBean.user_addr2 }" readonly="readonly"/></td>
                                        </tr>
                                        <tr>
                                            <td>E-mail</td>
                                            <td><input type="text" name="user_email" id="user_email" value="${selectUserBean.user_email }" readonly="readonly"/></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                        </div>
                        
                        <div class="row">
                    <div class="col-6"  style="margin:0 auto">
                        <div class="card">
                            <div class="table-responsive">
                                <table class="table">
                                	<thead>
                                	<tr>
                                	<td>인사정보</td>
                                	</tr>
                                	</thead>
                                    <tbody>
                                        <tr>
                                            <td>사원번호</td>
                                            <td><input type="text" name="emp_id" id="emp_id" value="${selectUserBean.emp_id }" readonly="readonly"/></td>
                                        </tr>
                                        <tr>
                                            <td>소속부서</td>
                                            <td><input type="text" name="dep_name" id="dep_name" value="${selectUserBean.dep_name }" readonly="readonly"/></td>
                                        </tr>
                                        <tr>
                                            <td>직급</td>
                                            <td><input type="text" name="position_name" id="position_name" value="${selectUserBean.position_name }" readonly="readonly"/></td>
                                        </tr>
                                        <tr>
                                            <td>입사일</td>
                                            <td><input type="text" name="join_date" id="join_date" value="${selectUserBean.join_date }" readonly="readonly"/></td>
                                        </tr>
                                        <tr>
                                            <td>내선번호</td>
                                            <td><input type="text" name="extension_tel" id="extension_tel" value="${selectUserBean.extension_tel }" readonly="readonly"/></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
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