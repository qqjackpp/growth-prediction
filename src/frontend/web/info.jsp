<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- css file -->
<link href="common.css" rel="stylesheet" type="text/css">
<link href="info.css" rel="stylesheet" type="text/css">
<!-- javascript file -->
<script src="#" type="text/javascript"></script>
<!-- google gont Noto Sans KR -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body>
	<header>
		<%@ include file="header.jsp"%>
	</header>
	<div class="main_contents">
			<table class = "doctor_info">
				<tr>
					<td>아이디</td>
					<td>dbstjr<%-- <%=doctor.id% --%></td>
				</tr>
				<tr>
					<td>이름</td>
					<td>최윤석<%-- <%=doctor.name %> --%></td>
				</tr>
				<tr>
					<td>병원명</td>
					<td>가나다<%-- <%=doctor.hospitalname %> --%></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td>aaa@aaa.aa<%-- <%=doctor.email %> --%></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td>1231241<%-- <%doctor.phone %> --%></td>
				</tr>
				<tr>
					<td>검진 횟수</td>
					<td>12<%-- <%doctor.times %> --%></td>
				</tr>
			</table>
	</div>
	<footer>
		<%@ include file="footer.jsp"%>
	</footer>
</body>
</html>