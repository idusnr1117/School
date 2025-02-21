<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="layout/db_connect.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검사결과입력</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript">

	function checkValue()
	{
		var cv = document.data;
		
		if (!cv.p_no.value)
		{
			alert("환자번호가 입력되지 않았습니다!");
			cv.p_no.focus();
			return false;
		}
		else if(!cv.t_code.value)
		{
			alert("검사코드가 선택되지 않았습니다!");
			cv.t_code.focus();
			return false;
		}
		else if(!cv.t_sdate.value)
		{
			alert("검사일자가 입력되지 않았습니다!");
			cv.t_sdate.focus();
			return false;
		}
		else if(!cv.t_status.value)
		{
			alert("검사상태가 선택되지 않았습니다!");
			cv.t_status[1].focus();
			return false;
		}
		else if(!cv.t_ldate.value)
		{
			alert("검사완료일자가 입력되지 않았습니다!");
			cv.t_ldate.focus();
			return false;
		}
		else if(!cv.t_result.value)
		{
			alert("검사결과가 선택되지 않았습니다!");
			cv.t_result[1].focus();
			return false;
		}
		alert("검사결과가 정상적으로 등록되었습니다!");
	}
	
	function rewrite()
	{
		alert("정보를 지우고 처음부터 다시 입력합니다!");
		location.href='join.jsp';
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
		<h2 class="title">검사결과입력</h2>
		<form name="data" action="join_p.jsp" method="post" onsubmit="return checkValue()">
		<table class="table_line">
			<tr>
				<th>환자번호</th>
				<td><input name="p_no" type="text" size="15" autofocus> 예)1001</td>
			</tr>
			<tr>
				<th>검사코드</th>
				<td>
					<select name="t_code">
						<option hidden="" value="">검사명</option>
						<option value="T001">결핵</option>
						<option value="T002">장티푸스</option>
						<option value="T003">수두</option>
						<option value="T004">홍역</option>
						<option value="T005">콜레라</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>검사시작일자</th>
				<td><input name="t_sdate" type="text" size="15"> 예)>20200101</td>
			</tr>
			<tr>
				<th>검사상태</th>
				<td>
					<input name="t_status" type="radio" value="1" tabindex="0">검사중
					<input name="t_status" type="radio" value="2" tabindex="0">검사완료
				</td>
			</tr>
			<tr>
				<th>검사완료일자</th>
				<td><input name="t_ldate" type="text" size="15"> 예)20200101</td>
			</tr>
			<tr>
				<th>검사결과</th>
				<td>
					<input name="t_result" type="radio" value="X" tabindex="0">미입력
					<input name="t_result" type="radio" value="P" tabindex="0">양성
					<input name="t_result" type="radio" value="N" tabindex="0">음성
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit">검사결과등록</button>
					<button type="button" onclick="return rewrite()">다시쓰기</button>
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