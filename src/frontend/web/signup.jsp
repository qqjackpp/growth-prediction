<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
<!-- css file -->
<link href="signup.css" rel="stylesheet" type="text/css">
<!-- javascript file -->

<!-- google gont Noto Sans KR -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

<title>Sign Up</title>
</head>
<body>
<header>
	<div class = "header_box">
		<a href="index.jsp"><img src="img/logo.png" height = 100px></a>
	</div>
</header>
<main class ="contents">
	<div class = "main">
		<div class = "signup_box">
			<form method = "post" action = "main.jsp" class = "signup_form" autocomplete="off">
				<ul type = "none">
				<li><input type = "text" placeholder = "아이디 (영어 대소문자와 숫자를 포함해 10~20글자)" name = "doctor_id" required class = "signup_input"></li>
				<li><input type = "password" placeholder = "비밀번호 (영어 대소문자와 숫자를 포함해 10~20글자)" name = "pw" required class = "signup_input"></li>
				<li><input type = "password" placeholder = "비밀번호 확인" name = "pw_confirm" required class = "signup_input"></li>
				<li><input type = "text" placeholder = "이름" name = "doctor_name" required class = "signup_input"></li>
				<li><input type = "email" placeholder = "이메일" name = "doctor_email" required class = "signup_input"></li>
				<li><input type = "text" placeholder = "병원명" name = "hospital" required class = "signup_input"></li>
				<li><input type = "tel" placeholder = "전화번호" name = "phone_number" required class = "signup_input"></li>
				<li><button type = "submit" class = "signup_submit">회원가입</button></li>
				</ul>
			</form>
		</div>
	</div>
</main>
<footer>
</footer>
</body>
</html>