<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<!-- css file -->
<link href="/growthprediction/css/index.css" rel="stylesheet" type="text/css">
<link href="/growthprediction/css/common.css" rel="stylesheet" type="text/css">
<!-- javascript file -->
<script src="/growthprediction/js/login.js" type="text/javascript" ></script>
<!-- google gont Noto Sans KR -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

</head>
<body>
	<div class="contents">
		<div class="main">
			<div class="login_form">
				<div class = "logo"><img width = "400px" src = "/growthprediction/img/ShortLogo.png"></div>
				<form action="main.jsp" method="post" id="login" onsubmit="return login_check()">
					<ul>
						<li><input type="text" name="doctorid" placeholder="아이디(이메일)" autocomplete="off" class="login_input" maxlength="20"></li>
						<li><input type="password" name="doctorpw" placeholder="비밀번호" autocomplete="off" class="login_input" maxlength="20"></li>
						<li><button type="submit" class="login_button">로그인</button></li>
					</ul>
				</form>
				<div class="under_login">
					<div class="login_help">
						<a href="/growth_prediction/signup">회원가입</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<div class="footer_text">
			<ul type="none">
				<li>201721191 최형준</li>
				<li>201721216 윤기웅</li>
				<li>201921195 조우연</li>
				<li>201921211 최아림</li>
				<li>201921199 최윤석</li>
			</ul>
		</div>
	</footer>
</body>
</html>