<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="layout/db_connect.jsp" %>
<% 

	String sql = "SELECT custno, custname, phone, address, "
	           + "TO_CHAR(joindate, 'yyyy-mm-dd') joindate, grade, city "
	           + "FROM member_tbl_02 WHERE custno=" + request.getParameter("custno");

	Statement pstmt = conn.createStatement();
	
	ResultSet rs = pstmt.executeQuery(sql);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css?ver1.1.1">
</head>
<body>
	
	<header>
		<jsp:include page="layout/header.jsp"></jsp:include>
	</header>
	
	<nav>
		<jsp:include page="layout/nav.jsp"></jsp:include>
	</nav>
	
	<main id="section">
		<h3 class="title">홈쇼핑 회원 정보 조회</h3>
		<table class="table_line">
			<%
			if (rs.next())
			{
			%>
				<tr>
					<th>회원번호</th>
					<td><%= rs.getString("custno") %></td>
				</tr>
				<tr>
					<th>회원성명</th>
					<td><%= rs.getString("custname") %></td>
				</tr>
				<tr>
					<th>회원전화</th>
					<td><%= rs.getString("phone") %></td>
				</tr>
				<tr>
					<th>회원주소</th>
					<td><%= rs.getString("address") %></td>
				</tr>
				<tr>
					<th>가입일자</th>
					<td><%= rs.getString("joindate") %></td>
				</tr>
				<tr>
					<th>고객등급</th>
					<td><%= rs.getString("grade") %></td>
				</tr>
				<tr>
					<th>도시코드</th>
					<td><%= rs.getString("city") %></td>
				</tr>
				<%
				}
				else
				{
				%>
				<tr>
					<th>회원번호</th>
					<td><%= request.getParameter("custno") %> 등록된 자료가 없습니다</td>
				</tr>
				<%
				} 
				%>
				<tr>
					<td colspan="2" align="center">	
						<input type="button" value="취소 후 다시 조회" onclick="parent.location.href='z_input.jsp'">
						<input type="button" value="회원목록조회/수정" onclick="parent.location.href='member_list.jsp'">
					</td>
				</tr>
			</table>
	</main>
	
	<footer>
		<jsp:include page="layout/footer.jsp"></jsp:include>
	</footer>
	
</body>
</html>