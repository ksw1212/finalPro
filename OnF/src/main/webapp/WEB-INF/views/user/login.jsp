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
    <title>user-login</title>
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
        <!-- Login box.scss -->
        <!-- ============================================================== -->
        <div class="auth-wrapper d-flex no-block justify-content-center align-items-center position-relative " style="background:#B0C4DE" >
            <div class="auth-box row">
            	<div class="col-3"></div>
                <div class="col-md-6 bg-white">
                    <div class="p-3">
                        <h2 class="mt-3 text-center">로그인</h2>
                        <div class="card-body">
							<c:if test="${fail==true}">
							<div class="alert alert-danger">
								<h3>로그인 실패</h3>
								<p>아이디 비밀번호를 확인해주세요</p>
							</div>
							</c:if>
                        <form:form class="mt-4" action="${root}user/login_pro" method="post" modelAttribute="temploginUserBean">
						<div class="row">
							<div class="col-lg-12">
								<div class="form-group">
									<form:label class="text-dark" path="user_email">E-mail</form:label> 
									<form:input class="form-control" path="user_email" placeholder="enter your E-mail"/>
									<form:errors path="user_email" style='color:red'/>
								</div>
							</div>
							<div class="col-lg-12">
								<div class="form-group">
									<form:label class="text-dark" path="user_password">Password</form:label> 
									<form:input class="form-control" path="user_password" type="password" placeholder="enter your password"/>
									<form:errors path="user_password" style='color:red'/>
								</div>
							</div>
							<div class="col-lg-12" style="margin-bottom:10px;">
							<a href="${root }user/login_findpassword" style="color:#7c8798; text-decoration:none;" 
								onmouseover="this.style.color='#191970'" onmouseout="this.style.color='#7c8798';">비밀번호 찾기&nbsp;&nbsp;&nbsp;</a>
							<a href="${root}user/join_master1" style="color:#7c8798; text-decoration:none;"
								onmouseover="this.style.color='#191970'" onmouseout="this.style.color='#7c8798';">회원가입</a>
							</div>
							<div class="col-lg-12 text-center" style="margin-block-end: 1em;">
                                <form:button class="btn btn-block btn-dark">Sign In</form:button>
                            </div>
                            
                            <div class="col-lg-12 text-center">
							 	<p class="text-center">OR</p>
                                <button type="submit" class="btn btn-block" style="background-color:#B22222; color:white; margin-block-end: 1em;">구글 로그인</button>
                            </div>
                        </div>
                        </form:form>
                    </div>
                </div>
                <div class="col-3"></div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- Login box.scss -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- All Required js -->
    <!-- ============================================================== -->
    <script src="../assets/libs/jquery/dist/jquery.min.js "></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="../assets/libs/popper.js/dist/umd/popper.min.js "></script>
    <script src="../assets/libs/bootstrap/dist/js/bootstrap.min.js "></script>
    <!-- ============================================================== -->
    <!-- This page plugin js -->
    <!-- ============================================================== -->
    <script>
        $(".preloader ").fadeOut();
    </script>
</body>

</html>