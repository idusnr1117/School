<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="layout/db_connect.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript">
	
	function checkValue()
	{
		var cv = document.data;
		
		if (isNaN(cv.resvno.value))
		{
			alert("숫자만 입력해주세요.");
			cv.resvno.focus();
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
		<h2 class="title">백신예약조회</h2>
		<form name="data" action="z_inquiery.jsp" method="post" onsubmit="return checkValue()">
		<table class="table_line">
			<tr>
				<th>예약번호</th>
				<td><input name="resvno" type="text" size="20" autofocus> 예) 20210001</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit">조회</button>
					<button type="button" onclick="location.href='z_input.jsp'">취소</button>
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