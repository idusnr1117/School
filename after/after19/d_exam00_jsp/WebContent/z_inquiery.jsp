<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="layout/db_connect.jsp" %>
<%

	request.setCharacterEncoding("UTf-8");

	String sql =  " select st.sno, st.sname, et.ekor, et.emath, et.eeng, et.ehist, "
				+ " (et.ekor + et.emath + et.eeng + et.ehist), round(((et.ekor + et.emath + et.eeng + et.ehist) / 4), 1)"
				+ " from student_tbl_03 st, exam_tbl_03 et "
				+ " where st.sno = et.sno and st.sno="+ request.getParameter("sno");

	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생목록</title>
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
		<h3 class="title">학생 정보(점수) 확인</h3>
		<table class="table_line">
		<%
		if (rs.next())
		{
		%>
		<tr>
			<th>학번</th>
			<td><%= rs.getString(1) %></td>	
		</tr>
		<tr>
			<th>성명</th>
			<td><%= rs.getString(2) %></td>	
		</tr>
		<tr>
			<th>국어점수</th>
			<td><%= rs.getString(3) %></td>	
		</tr>
		<tr>
			<th>수학점수</th>
			<td><%= rs.getString(4) %></td>	
		</tr>
		<tr>
			<th>영어점수</th>
			<td><%= rs.getString(5) %></td>	
		</tr>
		<tr>
			<th>역사점수</th>
			<td><%= rs.getString(6) %></td>	
		</tr>
		<tr>
			<th>총점</th>
			<td><%= rs.getString(7) %></td>	
		</tr>
		<tr>
			<th>평균</th>
			<td><%= rs.getString(8) %></td>	
		</tr>
		<%
		}
		else
		{
		%>
		<tr>
			<th>학번</th>
			<td><%= request.getParameter("sno") %> 등록된 학생은 없습니다.</td>
		</tr>
		<%
		}
		%>
		<tr align="center">
				<td colspan="2">
					<button type="button" onclick="location.href='z_input.jsp'">취소후다시조회</button>
					<button type="button" onclick="location.href='score_list.jsp'">학생목록조회</button>
				</td>
			</tr>
		</table>
	</main>
	
	<footer>
		<jsp:include page="layout/footer.jsp"></jsp:include>
	</footer>

</body>
</html>