<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="layout/db_connect.jsp" %>
<%

	String sql =  " select tp.p_city, decode(tp.p_city, '10', '서울', '20', '경기', '30', '강원', '40', '대구') 지역명, count(tr.p_no) "
				+ " from tbl_patient_202004 tp, tbl_result_202004 tr "
				+ " where tp.p_no = tr.p_no "
				+ " group by tp.p_city "
				+ " order by tp.p_city asc ";

	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>(지역별)검사건수통계</title>
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
		<h2 class="title">(지역별)검사건수통계</h2>
		<table class="table_line">
			<tr bgcolor="yellow">
				<th>지역코드</th>
				<th>지역명</th>
				<th>검사건수</th>
			</tr>
			<%
			while(rs.next())
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
		</table>
	</main>
	
	<footer>
		<jsp:include page="layout/footer.jsp"></jsp:include>
	</footer>

</body>
</html>