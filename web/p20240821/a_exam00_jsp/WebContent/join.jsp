<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="layout/db_connect.jsp" %>
<%@ page import="java.sql.*" %>
<%
	String sql = "select max(custno) from member_tbl_02";

	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
	
	rs.next();
	int num = rs.getInt(1) + 1;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css?ver2.2.2">
<script type="text/javascript">
	function checkValue()
	{
		var cv = document.data;
		if (!cv.custname.value)
		{
			alert("회원성명을 입력해주세요.");
			cv.custname.focus();
			return false;
		}
		else if (!cv.phone.value)
		{
			alert("회원전화 입력해주세요.");
			cv.phone.focus();
			return false;
		}
		else if (!cv.address.value)
		{
			alert("회원주소를 입력해주세요.");
			cv.address.focus();
			return false;
		}
		else if (!cv.joindate.value)
		{
			alert("가입일자를 입력해주세요.");
			cv.joindate.focus();
			return false;
		}
		else if (!cv.grade.value)
		{
			alert("고객등급을 입력해주세요.");
			cv.grade.focus();
			return false;
		}
		else if (!cv.city.value)
		{
			alert("도시코드를 입력해주세요.");
			cv.city.focus();
			return false;
		}
		return true;
	}
</script>
<title>join</title>
</head>
<body>

	<header>
		<jsp:include page="layout/header.jsp"></jsp:include>
	</header>
	
	<nav>
		<jsp:include page="layout/nav.jsp"></jsp:include>
	</nav>
	
	<main id="section">
		<h2 class="title">홈쇼핑 회원 등록</h2>
		<form name="data" action="join_p.jsp" method="post" onsubmit="return checkValue()">
			<table class="table_line">
				<tr>
					<th>회원번호(자동발생)</th>
					<td><input type="text" name="custno" value="<%= num %>" size="10" readonly></td>
				</tr>
				<tr>
					<th>회원성명</th>
					<td><input type="text" name="custname" size="10"></td>
				</tr>
				<tr>
					<th>회원전화</th>
					<td><input type="text" name="phone" size="15"></td>
				</tr>
				<tr>
					<th>회원주소</th>
					<td><input type="text" name="address" size="25"></td>
				</tr>
				<tr>
					<th>가입일자</th>
					<td><input type="text" name="joindate" size="10"></td>
				</tr>
				<tr>
					<th>고객등급 A:VIP, B:일반, C:직원</th>
					<td><input type="text" name="grade" size="10"></td>
				</tr>
				<tr>
					<th>도시코드</th>
					<td><input type="text" name="city" size="10"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="등록">
						<input type="button" value="취소" onclick="">
						<input type="button" value="조회" onclick="location.href='member_list.jsp'">
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