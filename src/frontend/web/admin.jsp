<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- css file -->
<link href="common.css" rel="stylesheet" type="text/css">
<link href="admin.css" rel="stylesheet" type="text/css">
<!-- javascript file -->
<script src="admin.js" type="text/javascript"></script>
<!-- google gont Noto Sans KR -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body>
<%!String name = "dsd"; %>
	<header>
		<nav>
			<ul type="none" class="navigator">
				<li class="navigator_menu"><a href="admin.jsp"><img src="img/Logo.png" height="100px"></a></li>
				<li class="navigator_menu"><a onclick="show_unauthorized_user()">사용자 승인</a></li>
				<li class="navigator_menu"><a onclick="show_authorized_user()">승인 해제</a></li>
				<li class="navigator_menu"><a href="#">로그아웃</a></li>
			</ul>
		</nav>
	</header>
	<div class="main_contents">
		<div id="authorized_user_area">
			<table id="authorized_user_table">
				<tr class="table_head">
					<td class="id_col">아이디</td>
					<td class="name_col">이름</td>
					<td class="hospital_col">병원명</td>
					<td class="email_col">이메일</td>
					<td class="phone_col">전화 번호</td>
					<!-- <td>검사 횟수</td> -->
					<td class="button_col">승인 해제</td>
				</tr>
				<tr>
					<td>qefqe</td>
					<td>가나다</td>
					<td>가나다라</td>
					<td>aa@aa.aa</td>
					<td>01011111111</td>
					<td><form method = "post" action = "">
							<input type="hidden" value="<%=name%>">
							<button>승인 해제</button>
						</form></td>
				</tr>
			</table>
		</div>

		<div id="unauthorized_user_area">
			<table id="unauthorized_user_table">
				<tr class="table_head">
					<td class="id_col">아이디</td>
					<td class="name_col">이름</td>
					<td class="hospital_col">병원명</td>
					<td class="email_col">이메일</td>
					<td class="phone_col">전화 번호</td>
					<td class="button_col">승인</td>
				</tr>
				</tr>
				<tr>
					<td>qefqe</td>
					<td>가나다</td>
					<td>가나다라</td>
					<td>aa@aa.aa</td>
					<td>01011111111</td>
					<td><form method = "post" action = "">
							<input type="hidden" value="doctorid">
							<button>승인</button>
						</form></td>
				</tr>
			</table>
		</div>
	</div>
	<footer>
		<%@ include file="footer.jsp"%>
	</footer>
</body>
</html>