<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
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
    <title>join_master4</title>
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
        <div class="auth-wrapper d-flex no-block justify-content-center align-items-center position-relative" style="background:#B0C4DE">
            <div class="auth-box row">
            	<div class="col-3"></div>
                <div class="col-md-auto bg-white">
                    <div class="p-3">
                        <h2 class="mt-3 text-center">SAMSUNG<br />회사 생성 완료!</h2>
                        <hr style="background-color:#5f76e8"/>
                        <p class="text-center">'SAMSUNG' 회사 및 대표 계정 생성이 완료되었습니다. 
                        <br/> <strong style="color:#5f76e8">'abc@naver.com'</strong>(으)로 인증메일이 전송되었습니다.
                        <br/><br /> 계정 인증 완료 후 ON&OFF와 근태관리를 시작하세요</p>
                        <form class="mt-6" action="#" method="get">
							<div class="col-lg-auto align-items-center">
								<div class="row justify-content-center align-items-center" style="padding-bottom:20px">
	                                <button type="button" onclick="location.href='${root}'" class="btn btn-dark col-12" style="margin-bottom:20">완료</button>
	                            </div>
	                        </div>
                        </form>
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
