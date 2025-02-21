<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="layout/db_connect.jsp" %>
<%

	String sql = " select max(custno) from member_tbl_02 ";

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
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript">

	function checkValue()
	{
		var cv = document.data;
		if (isNaN(cv.custno.value) || !cv.custno.value)
		{
			alert("숫자만 입력해주세요.");
			return false;
		}
		return true;
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
		<h2 class="title">회원정보조회</h2>
		<form name="data" action="z_inquiery.jsp" method="post" onsubmit="return checkValue()">
		<table class="table_line">
			<tr>
				<th>회원번호</th>
				<td><input name="custno" type="text" size="10" autofocus></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit">조회</button>
					<button type="button" onclick="location.href='z_input.jsp'">취소</button>
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