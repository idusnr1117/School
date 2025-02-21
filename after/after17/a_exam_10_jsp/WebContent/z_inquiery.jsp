<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="layout/db_connect.jsp" %>
<%

	request.setCharacterEncoding("UTF-8");
	
	String sql =  " select custno, custname, phone, address, "
				+ " to_char(joindate, 'YYYY-MM-DD'), grade, city  "
			 	+ " from member_tbl_02 "
			 	+ " where custno=" + request.getParameter("custno"); 

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
		<h2 class="title">홈쇼핑 회원 정보 조회</h2>
		<form name="data" action="join_p.jsp" method="post" onsubmit="return checkValue()">
		<table class="table_line">
			<%
			if (rs.next())
			{
			%>
			<tr>
				<th>회원번호</th>
				<td><%= rs.getString(1) %></td>
			</tr>
			<tr>
				<th>회원성명</th>
				<td><%= rs.getString(2) %></td>
			</tr>
			<tr>
				<th>회원전화</th>
				<td><%= rs.getString(3) %></td>
			</tr>
			<tr>
				<th>회원주소</th>
				<td><%= rs.getString(4) %></td>
			</tr>
			<tr>
				<th>가입일자</th>
				<td><%= rs.getString(5) %></td>
			</tr>
			<tr>
				<th>고객등급</th>
				<td><%= rs.getString(6) %></td>
			</tr>
			<tr>
				<th>도시코드</th>
				<td><%= rs.getString(7) %></td>
			</tr>
			<%
			}
			else
			{
			%>
			<tr>
				<th>회원번호</th>
				<td><%= request.getParameter("custno") %>번의 회원이 존재하지 않습니다.</td>
			</tr>
			<%
			}
			%>
			<tr>
				<td colspan="2" align="center">
					<button type="button" onclick="location.href='z_input.jsp'">취소 후 다시 조회</button>
					<button type="button" onclick="location.href='member_list.jsp'">회원목록조회/수정</button>
				</td>
			</tr>
		</table>
		</form>
	</main>
	
	<footer>
		<jsp:include page="layout/footer.jsp"></jsp:include>
	</footer>

</body>
</html>