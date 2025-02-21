<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="layout/db_connect.jsp" %>
<%
	
	String sql =  " select hospcode, decode(hospaddr, '10', '서울', '20', '대전', '30', '대구', '40', '광주', '에러') 병원지역, "
				+ " (select count(*) from tbl_vaccresv_202108 where hospcode = th.hospcode) "
				+ " from tbl_hosp_202108 th "
				+ " order by th.hospcode";

	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
	
	sql = " select count(*) from tbl_vaccresv_202108 ";
	
	pstmt = conn.prepareStatement(sql);
	
	ResultSet rs2 = pstmt.executeQuery();
	rs2.next();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
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
		<h2 class="title">백신예약현황</h2>
		<table class="table_line">
			<tr align="center">
				<th>병원지역</th>
				<th>병원지역명</th>
				<th>접종예약건수</th>
			</tr>
			<%
			while (rs.next())
			{
			%>
			<tr align="center">
				<td><%= rs.getString(1) %></td>
				<td><%= rs.getString(2) %></td>
				<td><%= rs.getString(3) %></td>
			</tr>
			<%
			}
			%>
			<tr align="center">
				<th colspan="2">총합</th>
				<td><%= rs2.getString(1) %></td>
			</tr>
		</table>
	</main>
	
	<footer>
		<jsp:include page="layout/footer.jsp"></jsp:include>
	</footer>

</body>
</html>