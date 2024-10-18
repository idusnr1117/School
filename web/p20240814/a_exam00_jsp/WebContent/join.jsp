<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="../layout/db_connect.jsp" %>
<%
	String sql = "select max(custno) from member_tbl_02";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery(sql);
	rs.next();
	int num = rs.getInt(1) + 1;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css?ver=1.1.1">
<script type="text/javascript">
	function checkValue()
	{
		var cv = document.data;
		if (!cv.custname.value)
		{
			alert("회원성명을 입력하세요.");
			cv.custname.focus();
			return false;
		}
		else if (!cv.phone.value)
		{
			alert("전화번호를 입력하세요.");
			cv.phone.focus();
			return false;
		}
		else if (!cv.address.value)
		{
			alert("주소를 입력하세요.");
			cv.address.focus();
			return false;
		}
		else if (!cv.joindate.value)
		{
			alert("가입일자를 입력하세요.");
			cv.joindate.focus();
			return false;
		}
		else if (!cv.grade.value)
		{
			alert("고객등급을 입력하세요.");
			cv.grade.focus();
			return false;
		}
		else if (!cv.city.value)
		{
			alert("도시코드를 입력하세요.");
			cv.city.focus();
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
		<form name="data" action="join_p.jsp" method="post" onsubmit="checkValue()">
			<div class="title"><h2>홈쇼핑 회원 등록</h2></div>
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
						<th>고객등급[A:VIP, B:일반, C:직원]</th>
						<td><input type="text" name="grade" size="10"></td>
					</tr>
					<tr>
						<th>도시코드</th>
						<td><input type="text" name="city" size="10"></td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<button type="submit">등록</button>
							<button type="reset" onclick="location.href='join.jsp'">취소</button>
							<button type="button" onclick="location.href='member_tbl_02'">조회</button>
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