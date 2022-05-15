<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검진 결과</title>
<!-- css file -->
<link href="common.css" rel="stylesheet" type="text/css">
<link href="result.css" rel="stylesheet" type="text/css">
<!-- javascript file -->
<script src="result.js" type="text/javascript"></script>
<!-- google gont Noto Sans KR -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
</head>
<body>


	<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("child_name");
	String gender = request.getParameter("child_gender");
	String ko_gender;
	if (gender.equals("male")) {
		ko_gender = "남";
	} else {
		ko_gender = "여";
	}

	double bone_age = 11.1;
	%>
	<header>
		<%@ include file="header.jsp"%>
	</header>
	<div class="main_contents">
		<div class="result_menu">
			<button onclick="show_result_page()" class="result_menu_button"
				id="show_result_button">결과보기</button>
			<button onclick="show_picture_page()" class="result_menu_button"
				id="show_picture_button">사진보기</button>
			<button onclick="show_privacy_page()" class="result_menu_button"
				id="show_privacy_button">아이 생활 습관</button>
			<button onclick="show_report_page()" class="result_menu_button"
				id="show_report_button">이전 검사 결과</button>

		</div>

		<div id="child_result_page">
			<div class="result_page_box">
				<!-- 검사 결과 안내 페이지 -->
				<div class="report_data">
					<!--  골 연령 검사 결과 내용  -->
					<table class="result_table">
						<tr>
							<td class = "table_legend">이름</td>
							<td><%=name%></td>
						</tr>
						<tr>
							<td>성별</td>
							<td><%=ko_gender%></td>
						</tr>
						<tr>
							<td>골연령</td>
							<td><%=bone_age%>세</td>
						</tr>
						<!-- <tr>
							<td>역연령</td>
							<td>역연령 수치</td>
						</tr>
						
						<tr>
							<td>예측키</td>
							<td>예측 키</td>
						</tr>
						<tr>
							<td>키</td>
							<td>키</td>
						</tr>
						<tr>
							<td>체중</td>
							<td>체중</td>
						</tr>
						<tr>
							<td>BMI</td>
							<td>BMI</td>
						</tr>
						<tr>
							<td>예측키</td>
							<td>예측 키</td>
						</tr> -->
					</table>
				</div>
				<div class="doctor_recommandation">
					<!--  의사 검진(추천 정보 입력)  -->
					<form action = "main.jsp" method = "post" class = "recommandation_form">
						<ul>
							<li class="form_list">걸음걸이 입력<input type="text" class="doctor_form"></li>
							<li class="form_list">운동량 입력<input type="text" class="doctor_form"></li>
							<li class="form_list">수면 시간 입력<input type="text" class="doctor_form"></li>
							<li class = "form_list">소견<textarea class = "doctor_form textarea_box"></textarea></li>
							<li class="form_list last"><button class="submit_button">제출</button></li>
						</ul>
					</form>
				</div>

			</div>
		</div>
		<!-- 뼈 사진 보여주기 -->
		<div id="child_bone_page">
			<div class="bone_page_box">
				<div class="bone_image">
					<img src="img/1377.png" width="1060px">
				</div>
			</div>
		</div>

		<!-- 아이 생활정보 관련 페이지 -->
		<div id="child_privacy_page">
			<div class="privacy_page_box">privacy</div>
		</div>


		<!-- 이전의 골연령 검사 결과  -->
		<div id="child_report_page">
			<div class="report_page_box">골연령 검사 결과</div>
		</div>


	</div>
	<footer>
		<%@ include file="footer.jsp"%>
	</footer>
</body>
</html>