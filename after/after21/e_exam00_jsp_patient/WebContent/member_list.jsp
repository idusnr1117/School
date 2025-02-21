<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="layout/db_connect.jsp" %>
<%

	String sql =  " select p_no, p_name, to_char(to_date(p_birth), 'YYYY\"년\"MM\"월\"DD\"일\"'), "
				+ " decode(p_gender, 'M', '남', 'F', '여', '에러'), p_tel1||'-'||p_tel2||'-'||p_tel3, "
				+ " decode(p_city, '10', '서울', '20', '경기', '30', '강원', '40', '대구', '에러') "
				+ " from tbl_patient_202004 ";

	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환자조회</title>
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
		<h2 class="title">환자조회</h2>
		<table class="table_line">
			<tr bgcolor="yellow">
				<th>환자번호</th>
				<th>환자성명</th>
				<th>생년월일</th>
				<th>성별</th>
				<th>전화번호</th>
				<th>지역</th>
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
				<td><%= rs.getString(5) %></td>
				<td><%= rs.getString(6) %></td>
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