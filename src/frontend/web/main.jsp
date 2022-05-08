<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
<!-- css file -->
<link href="common.css" rel="stylesheet" type="text/css">
<link href="main.css" rel="stylesheet" type="text/css">
<!-- javascript file -->
<script src="main.js" type="text/javascript"></script>
<!-- google gont Noto Sans KR -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
</head>
<body>

<%--
	String doctor_id = (String)session.getAttribute("doctor_id");
	
	if (doctor_id == null){
		response.sendRedirect("index.jsp");
	}

--%>
<%! %>
<header>
    <%@ include file = "header.jsp"%>
</header>
<div class="contents">
	<button onclick="refresh()">새로고침</button>
    <div id="children_table">

    </div>
</div>

<footer>
	<%@ include file = "footer.jsp"%>
</footer>
<script>
getChildrenList();
</script>
</body>
</html>