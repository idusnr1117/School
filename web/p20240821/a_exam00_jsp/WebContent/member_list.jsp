<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="layout/db_connect.jsp" %>
<%@ page import="java.sql.*" %>
<%
	String sql = "select * from member_tbl_02";

	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	
	<header>
		<jsp:include page="layout/header.jsp"></jsp:include>
	</header>
	
	<nav>
		<jsp:include page="layout/nav.jsp"></jsp:include>
	</nav>
	
	<main id="section">
		<h2 class="title">회원목록조회/수정</h2>
		<table class="table_line">
			<tr>
				<th>회원번호</th>
				<th>회원성명</th>
				<th>회원전화</th>
				<th>회원주소</th>
				<th>가입일자</th>
				<th>고객등급 A:VIP, B:일반, C:직원</th>
				<th>도시코드</th>
			</tr>
			<tr>
				<% while(rs.next()) 
				{
				%>
				<td><% rs.getInt(1); %></td>
				<td><% rs.getString(2); %></td>
				<td><% rs.getString(3); %></td>
				<td><% rs.getString(4); %></td>
				<td><% rs.getString(5); %></td>
				<td><% rs.getString(6); %></td>
				<td><% rs.getString(7); %></td>
				<%
				}
				%>
			</tr>
		</table>
	</main>
	
	<footer>
		<jsp:include page="layout/footer.jsp"></jsp:include>
	</footer>
	
</body>
</html>