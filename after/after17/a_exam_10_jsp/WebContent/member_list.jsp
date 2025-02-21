<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="layout/db_connect.jsp" %>
<%
	
	String sql =  " select custno, custname, phone, address, "
				+ " to_char(joindate, 'YYYY-MM-DD'), decode(grade, 'A', 'VIP', 'B', '일반', 'C', '직원', '에러'), city  "
			 	+ " from member_tbl_02 ";

	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memeber_list</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript">

	function remove(custno)
	{
		var result = confirm("삭제하시겠습니까?");
		if (result)
		{
			alert("삭제가 완료되었습니다.");
			location.href="delete.jsp?custno=" + custno;
		}
		else
		{
			alert("삭제를 취소합니다.");
			return false;
		}
	}
	
</script>
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
			<tr bgcolor="green">
				<th>회원번호</th>
				<th>회원성명</th>
				<th>전화번호</th>
				<th>주소</th>
				<th>가입일자</th>
				<th>고객등급</th>
				<th>거주지역</th>
				<th>수정 및 삭제</th>
			</tr>
			<tr>
			<%
			while(rs.next())
			{
			%>
			<tr align="center">
				<td bgcolor="yellow"><%= rs.getString(1) %></td>
				<td><%= rs.getString(2) %></td>
				<td><%= rs.getString(3) %></td>
				<td><%= rs.getString(4) %></td>
				<td><%= rs.getString(5) %></td>
				<td><%= rs.getString(6) %></td>
				<td><%= rs.getString(7) %></td>
				<td>
					<button type="button" onclick="location.href='update.jsp?custno=<%= rs.getString(1) %>';">수정</button>
					<button type="button" onclick="remove('<%= rs.getString(1) %>')">삭제</button>
					<button type="button" onclick="location.href='z_inquiery.jsp?custno=<%= rs.getString(1) %>';">조회</button>
				</td>
			<%
			}
			%>
			</tr>
		</table>
		</form>
	</main>
	
	<footer>
		<jsp:include page="layout/footer.jsp"></jsp:include>
	</footer>

</body>
</html>