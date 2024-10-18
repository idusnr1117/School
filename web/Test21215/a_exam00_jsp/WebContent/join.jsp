<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="layout/db_conntect.jsp" %>
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
<title>join</title>
<link rel="stylesheet" href="css/style.css?ver1.1.1">
<script type="text/javascript">
	
	function checkValue()
	{
		var cv = document.data
		if (!cv.custname.value)
		{
			alert("회원성명을 입력해주세요.")
			cv.custname.focus()
			return false
		}
		else if (!cv.phone.value)
		{
			alert("전화번호를 입력해주세요.")
			cv.phone.focus()
			return false
		}
		else if (!cv.address.value)
		{
			alert("주소를 입력해주세요.")
			cv.address.focus()
			return false
		}
		else if (!cv.joindate.value)
		{
			alert("가입일자를 입력해주세요.")
			cv.joindate.focus()
			return false
		}
		else if (!cv.grade.value)
		{
			alert("고객등급을 입력해주세요.")
			cv.grade.focus()
			return false
		}
		else if (!cv.city.value)
		{
			alert("도시코드를 입력해주세요.")
			cv.city.focus()
			return false
		}
		alert("회원등록이 완료되었습니다.")
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
		<h2 class="title">홈쇼핑 회원 등록</h2>
		<form name="data" action="join_p.jsp" method="post" onsubmit="return checkValue()">
			<table class="table_line">
				<tr>
					<th>회원번호(자동발생)</th>
					<td><input name="custno" type="text" value="<%= num %>" size="10" readonly></td>
				</tr>
				<tr>
					<th>회원성명</th>
					<td><input name="custname" type="text" size="10" autofocus></td>
				</tr>
				<tr>
					<th>회원전화</th>
					<td><input name="phone" type="text" size="15"></td>
				</tr>
				<tr>
					<th>회원주소</th>
					<td><input name="address" type="text" size="20"></td>
				</tr>
				<tr>
					<th>가입일자</th>
					<td><input name="joindate" type="text" size="10"></td>
				</tr>
				<tr>
					<th>고객등급[A:VIP, B:일반, C:직원]</th>
					<td><input name="grade" type="text" size="10"></td>
				</tr>
				<tr>
					<th>도시코드</th>
					<td><input name="city" type="text" size="10"></td>
				</tr>
				<tr>
					<th colspan="2">
						<button type="submit">등록</button>
						<button type="reset">취소</button>
						<button type="button" onclick="location.href='member_list.jsp'">조회</button>
					</th>
				</tr>			
			</table>
		</form>
	</main>
	
	<footer>
		<jsp:include page="layout/footer.jsp"></jsp:include>
	</footer>
	
	
</body>
</html>