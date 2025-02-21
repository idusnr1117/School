<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="layout/db_connect.jsp" %>
<%
	
	String sql =  " select tv.resvno 예약번호, tj.name 성명, decode(substr(tv.jumin, 8, 1), '1', '남', '2', '여', '에러') 성별, "
				+ " th.hospname 병원이름, to_char(tv.resvdate, 'YYYY\"년\"MM\"월\"DD\"일\"') 예약날짜, "
				+ " substr(lpad(tv.resvtime, 4, '0'), 1, 2)||':'||substr(lpad(tv.resvtime, 4, '0'), 3, 2) 예약시간, "
				+ " decode(tv.vcode, 'A', 'V001', 'B', 'V002', 'C', 'V003', '에러') 백신코드, "
				+ " decode(th.hospaddr, '10', '서울', '20', '대전', '30', '대구', '40', '광주', '에러') 병원지역 "
				+ " from tbl_vaccresv_202108 tv, tbl_jumin_202108 tj, tbl_hosp_202108 th "
				+ " where tv.jumin = tj.jumin and tv.hospcode = th.hospcode";

	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member_list</title>
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
		<h2 class="title">백신예약 프로그램 작성 안내</h2>
		<table class="table_line">
			<tr align="center">
				<th>예약번호</th>
				<th>성명</th>
				<th>성별</th>
				<th>병원이름</th>
				<th>예약날짜</th>
				<th>에약시간</th>
				<th>백신코드</th>
				<th>병원지역</th>
			</tr>
			<%
			while (rs.next())
			{
			%>
			<tr align="center">
				<td><%= rs.getString(1) %></td>
				<td><%= rs.getString(2) %></td>
				<td><%= rs.getString(3) %></td>
				<td><%= rs.getString(4) %></td>
				<td><%= rs.getString(5) %></td>
				<td><%= rs.getString(6) %></td>
				<td><%= rs.getString(7) %></td>
				<td><%= rs.getString(8) %></td>
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