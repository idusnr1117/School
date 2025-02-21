<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="layout/db_connect.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생목록</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript">
	
	function checkValue()
	{
		var cv = document.data;
		
		if (isNaN(cv.sno.value) || !cv.sno.value)
		{
			alert("숫자를 입력해주세요.");
			cv.sno.focus();
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
		<h3 class="title">학생 정보(점수)확인</h3>
		<form name="data" action="z_inquiery.jsp" method="post" onsubmit="return checkValue()">
		<table class="table_line">
			<tr>
				<th>학번입력</th>
				<td><input name="sno" type="text" size="10" autofocus></td>
			</tr>
			<tr align="center">
				<td colspan="2">
					<button type="submit">조회</button>
					<button type="button" onclick="location.href='z_input.jsp'">다시입력</button>
					<button type="button" onclick="location.href='score_list.jsp'">학생목록조회</button>
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