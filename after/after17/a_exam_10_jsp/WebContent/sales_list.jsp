<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="layout/db_connect.jsp" %>
<%
	
	String sql =  " select MB.custno, MB.custname,  "
				+ " decode(MB.grade, 'A', 'VIP', 'B', '일반', 'C', '직원', '에러'), sum(MY.price) as total_price "
			 	+ " from member_tbl_02 MB, money_tbl_02 MY "
			 	+ " where MB.custno = MY.custno "
			 	+ " group by MB.custno, MB.custname, MB.grade "
			 	+ " order by total_price desc ";

	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memeber_list</title>
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
		<h2 class="title">회원매출조회</h2>
		<table class="table_line">
			<tr>
				<th>회원번호</th>
				<th>회원성명</th>
				<th>고객등급</th>
				<th>매출</th>
			</tr>
			<%
			while(rs.next())
			{
			%>
			<tr align="center">
				<td><%= rs.getString(1) %></td>
				<td><%= rs.getString(2) %></td>
				<td><%= rs.getString(3) %></td>
				<td><%= rs.getString(4) %></td>
			</tr>
			<%
			}
			%>
		</table>
	</main>
	
	<footer>
		<jsp:include page="layout/footer.jsp"></jsp:include>
	</footer>

</body>
</html>