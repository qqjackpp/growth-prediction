<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
<!-- css file -->
<link href="common.css" rel="stylesheet" type="text/css">
<!-- javascript file -->

<!-- google gont Noto Sans KR -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

</head>
<body>

<%--
	String doctor_id = (String)session.getAttribute("doctor_id");
	
	if (doctor_id == null){
		response.sendRedirect("index.jsp");
	}

--%>
<header>
    <nav>
        <ul type = "none" class = "navigator">
        <li class="navigator_menu"><a href="main.html" ><img src="img/logo.png" height="100px"></a></li>
        <li class="navigator_menu"><a href="main.html">검진</a></li>
        <li class="navigator_menu"><a href="#">문의</a></li>
        <li class="navigator_menu"><a href="#">로그아웃</a></li>
        <li class="navigator_menu"><a href="#">사용자 정보</a></li>
        </ul>
    </nav>
</header>
<div class="contents">
    <div class="child_list_menu">
        <ul>
        <li>등록</li>
        <li>검색</li>
        </ul>
    </div>
    <div class="child_list">
        <table>
        <%--  
            <% for (Child child : childList) { %>
            <td>child.name</td><td>child.gender</td><td>child.phoneNumber</td><td></td><td></td><td></td><td></td>
            
            <% }%>
             --%>
        </table>
    </div>
</div>
<footer>

</footer>
</body>
</html>