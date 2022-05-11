<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
<!-- css file -->
<link href="/growth_prediction/css/common.css" rel="stylesheet" type="text/css">
<link href="/growth_prediction/css/main.css" rel="stylesheet" type="text/css">

<link href="main.css" rel="stylesheet" type="text/css">
<link href="common.css" rel="stylesheet" type="text/css">

<!-- javascript file -->
<script src="/growth_prediction/js/main.js" type="text/javascript"></script>

<script src="main.js" type="text/javascript"></script>
<!-- google gont Noto Sans KR -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

<%-- JSTL 필요시 사용 @ taglib uri="http://java.sun.com/jstl/core" prefix="c" --%>
</head>
<body>

	<%--
	String doctor_id = (String)session.getAttribute("doctor_id");
	
	if (doctor_id == null){
		response.sendRedirect("index.jsp");
	}
--%>
	<%!public class child {
		String id;
		String name;
		String phone_number;

		public child(String id, String name, String phone_number) {
			this.id = id;
			this.name = name;
			this.phone_number = phone_number;
		}

	}

	child[] children = {new child("id1", "name1", "0101111****"), new child("id2", "name2", "0102222****"),
			new child("id3", "name3", "0103333****"), new child("id4", "name4", "0104444****")};%>
	<header>
		<%@ include file="header.jsp"%>
	</header>
	<div class="main_contents">
		<div class="select">
			<div class="above_list">
				<button onclick="" class="above_button">검색</button>
				<button onclick="new_child()" class="above_button">등록</button>
			</div>
			<div>
				<table class="children_table">
					<tr class="children_table_head">
						<td>id</td>
						<td>이름</td>
						<td>전화번호</td>
						<td>진료하기</td>
					</tr>
					<%
					for (child cc : children) {
					%>

					<tr class="children_table_body">
						<td class="children_table_id"><%=cc.id%></td>
						<td class="children_table_name"><%=cc.name%></td>
						<td class="children_table_phone_number"><%=cc.phone_number%></td>
						<td class="children_table_button"><button onclick="checkup('<%=cc.id%>')" class="select_child">진료하기</button></td>
					</tr>

					<%
					}
					%>
				</table>
			</div>
		</div>
		<div class="work_space_box">
			<div id="image_upload">
				<div class="child_info">
					<table class="info_table">

					</table>
				</div>
				<form action="" method="post" onsubmit="return false">
					<input type="file" name="bone_picture"> 
					<input type="text" name="child_tall" placeholder="키">
					<input type="hidden" name="child_id" id="selected_child_id">

				</form>
			</div>

			<div id="registration">
				<form action="" method="post" onsubmit="return false">
					<input type="text" placeholder="아이디">
					<input type="text" placeholder="이름">
					<input type="text" placeholder="이메일">
					<input type="tel" placeholder="전화번호">
				</form>
			</div>
		</div>
	</div>
	<footer>
		<%--@ include file="footer.jsp"--%>
	</footer>
	<script>
	1. main페이지의 기본 폼 구성
	- 아이 검진에는 hidden영역 추가

	2. main페이지 폼의 css구성
	3. main페이지 파일 업로드의 형식 검사 함수 추가
	</script>
</body>
</html>