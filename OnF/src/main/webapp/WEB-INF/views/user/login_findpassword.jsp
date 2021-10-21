<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../dist/css/loginstyle.css" />

</head>
<body>
<div id="login">
  <span class="subject">
  <h1><strong>ON & OFF</strong></h1>
   </span>
  <form action="${root}login_password_pro" method="post">

    <fieldset>

      <p><input type="text" required value="E-mail" placeholder="이메일"></p>

      <p><input type="tel" required value="phone" placeholder="전화번호"></p>

    

      <p><input type="submit" value="비밀번호 찾기"></p>

    </fieldset>

  </form>

 



</div>
</body>
</html>