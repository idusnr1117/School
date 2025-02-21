<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="layout/db_connect.jsp" %>
<%

	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제목</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>

	<header>
		<jsp:include page="layout/header.jsp"></jsp:include>
	</header>
	
	<nav>
		<jsp:include page="layout/nav.jsp"></jsp:include>
	</nav>
	
	<main id="section">
		<h2 class="title">페이지제목</h2>
		<table class="table_line">
			
		</table>
	</main>
	
	<footer>
		<jsp:include page="layout/footer.jsp"></jsp:include>
	</footer>

</body>
</html>