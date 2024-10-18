<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="layout/db_conntect.jsp" %>
<%
	
	String sql = ""
	+ " select custno, custname, phone, address, "
	+ " to_char(joindate, 'yyyy-mm-dd') joindate, "
	+ " case grade "
	+ " when 'A' then 'VIP' " 
	+ " when 'B' then '일반' "
	+ " when 'C' then '직원' "
	+ " else grade end grade, city "
	+ " from member_tbl_02 order by custno asc ";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member list</title>
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
		<h2 class="title">회원목록조회/수정</h2>
		<form name="data" action="join_p.jsp" method="post" onsubmit="return checkValue()">
			<table class="table_line">
				<tr>
					<th>회원번호</th>
					<th>회원성명</th>
					<th>전화번호</th>
					<th>주소</th>
					<th>가입일자</th>
					<th>고객등급</th>
					<th>거주지역</th>
				</tr>
				<%
				while (rs.next())
				{
				%>
				<tr align="center">
					<td class="link"><a href="location.href='update.jsp?custno=<%= rs.getString("custno") %>" style="color : blue"><%= rs.getString("custno") %></a></td>
					<td><%= rs.getString("custname") %></td>
					<td><%= rs.getString("phone") %></td>
					<td><%= rs.getString("address") %></td>
					<td><%= rs.getString("joindate") %></td>
					<td><%= rs.getString("grade") %></td>
					<td><%= rs.getString("city") %></td>
				</tr>
				<%
				}
				%>
			</table>
		</form>
	</main>
	
	<footer>
		<jsp:include page="layout/footer.jsp"></jsp:include>
	</footer>
	
</body>
</html>