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
    <title>join_master2</title>
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
                <div class="col-md-8 bg-white">
                    <div class="p-3">
                        <h2 class="mt-3 text-center">마스터 계정생성</h2>
                        <p class="text-center">대표 계정의 개인 정보를 입력해주세요.</p>
                        <hr style="background-color:#5f76e8"/>
                        <form:form class="mt-6" action="${root}user/join_master2_pro" method="post" modelAttribute="joinUserBean">
                        <form:hidden path="user_idx"/>
						<div class="row">
							<div class="col-lg-12">
								<div class="form-group">
									<form:label class="text-dark" path="user_name">이름</form:label> 
									<form:input class="form-control" path="user_name" placeholder="enter your ID"/>
								</div>
							</div>
							<div class="col-lg-12">
								<div class="form-group">
									<form:label class="text-dark" path="user_tel">전화번호</form:label> 
									<form:input class="form-control" path="user_tel" type="text"/>
								</div>
								<div class="form-group">
									<form:label class="text-dark" path="user_addr1">거주지 주소</form:label> 
									<div class="row mx-2" style="margin-bottom: 5px">
										<form:input class="form-control col-9" path="user_addr1" placeholder="거주지 주소 검색"/>
	                                	<button onclick="location.href='#'" class="btn btn-danger col-3">주소검색</button>
									</div>
									<form:input class="form-control ml-2 col-9" path="user_addr2" placeholder="상세주소 입력"/>
								</div>
							</div>
							<div class="col-lg-12">
								<div class="form-group ">
									<div class="row mx-2 justify-content-center align-items-center">
		                                <form:button class="btn btn-block btn-purple col-7" style="margin-right: 5px">다음</form:button>
		                                <button type="button" onclick="location.href='${root}user/join_master1'" class="btn btn-outline-secondary col-4">이전</button>
		                            </div>
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
