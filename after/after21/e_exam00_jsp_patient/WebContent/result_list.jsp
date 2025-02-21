<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="layout/db_connect.jsp" %>
<%

	String sql =  " select tr.p_no, tp.p_name, "
				+ " decode(tr.t_code, 'T001', '결핵', 'T002', '장티푸스', 'T003', '수두', 'T004', '홍역', 'T005', '콜레라'), "
				+ " to_char(tr.t_sdate, 'YYYY-MM-DD'), decode(tr.t_status, '1', '검사중', '2', '검사완료', '에러'), "
				+ " to_char(tr.t_ldate, 'YYYY-MM-DD'), decode(tr.t_result, 'X', '미입력', 'P', '양성', 'N', '음성', '에러') "
				+ " from tbl_result_202004 tr, tbl_patient_202004 tp "
				+ " where tr.p_no = tp.p_no ";

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
		<h2 class="title">검사결과조회</h2>
		<div class="scroll">
			<table class="table_line">
				<thead>
					<tr bgcolor="yellow">
					<th>환자번호</th>
					<th>환자명</th>
					<th>검사명</th>
					<th>검사시작일</th>
					<th>검사상태</th>
					<th>검사종료일</th>
					<th>검사결과</th>
				</tr>
				</thead>
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
					<td><%= rs.getString(7) %></td>
				</tr>
				<%
				}
				%>
			</table>
		</div>
	</main>
	
	<footer>
		<jsp:include page="layout/footer.jsp"></jsp:include>
	</footer>

</body>
</html>