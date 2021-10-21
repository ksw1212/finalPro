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
    <title>join_master1</title>
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
                        <p class="text-center">회사 정보를 입력하세요</p>
                        <hr style="background-color:#5f76e8"/>
                        <form class="mt-6" action="${root}user/join_master4" method="post">
						<div class="row">
							<div class="col-lg-12">
								<div class="form-group">
									<label class="text-dark" for="aname">회사이름</label> 
									<input class="form-control" id="aname" type="text" placeholder="enter your ID">
								</div>
							</div>
							<div class="col-lg-12">
								<div class="form-group">
									<label class="text-dark" for="apwd">회사주소</label> 
									<div class="row mx-2" style="margin-bottom: 5px">
										<input class="form-control col-9" id="aname" type="text" placeholder="거주지 주소 검색">
	                                	<button type="button" class="btn btn-danger col-3">주소검색</button>
									</div>
									<input class="form-control ml-2 col-9" id="aname" type="text" placeholder="상세주소 입력">
								</div>
								<div class="form-group">
									<label class="text-dark" for="apwd">회사 전화번호</label> 
									<input class="form-control ml-2 col-9" id="aname" type="text" placeholder="상세주소 입력">
								</div>
							</div>
							<div class="col-lg-12">
								<div class="form-group ">
									<div class="row mx-2 justify-content-center align-items-center">
		                                <button type="submit" class="btn btn-block btn-purple col-7" style="margin-right: 5px">다음</button>
		                                <button type="button" onclick="location.href='${root}user/join_master2'" class="btn btn-outline-secondary col-4">이전</button>
		                            </div>
	                            </div>
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
