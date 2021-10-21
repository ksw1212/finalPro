<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
        <!-- Login box.scss -->
        <!-- ============================================================== -->
        <div class="auth-wrapper d-flex no-block justify-content-center align-items-center position-relative bg-info" >
            <div class="auth-box row">
            	<div class="col-3"></div>
                <div class="col-md-6 bg-white">
                    <div class="p-3">
                        <h2 class="mt-3 text-center">로그인</h2>
                        <p class="text-center">어드민 페이지로 접근하기 위해 <br />어드민ID와 비밀번호를 입력해주세요. </p>
                        <form class="mt-4" action="${root }admin/adminView" method="get">
						<div class="row">
							<div class="col-lg-12">
								<div class="form-group">
									<label class="text-dark" for="aname">Admin ID</label> <input
										class="form-control" id="aname" type="text"
										placeholder="enter your ID">
								</div>
							</div>
							<div class="col-lg-12">
								<div class="form-group">
									<label class="text-dark" for="apwd">Password</label> <input
										class="form-control" id="apwd" type="password"
										placeholder="enter your password">
								</div>
							</div>
							<div class="col-lg-12">
								<div class="form-group">
									<label class="text-dark" for="atel">Phone Number</label> 
									<div class="row mx-2">
										<input class="form-control col-8" id="atel" type="password"
											placeholder="enter your Phone Number">
										<button type="button" class="btn btn-danger btn-sm col-4 ms-1">전송하기</button>
										
									</div>
								</div>
							</div>
						<div class="col-lg-12 text-center">
                                    <button type="submit" class="btn btn-block btn-dark">Sign In</button>
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