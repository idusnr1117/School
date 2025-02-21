<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="layout/db_connect.jsp" %>
<%
	
	String sql = " select max(resvno) from tbl_vaccresv_202108 ";

	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	
	int num = rs.getInt(1) + 1;

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
<link rel="stylesheet" type="text/css" href="css/style.css?ver1.1.1">
<script type="text/javascript">
	
	function checkValue()
	{
		var cv = document.data;
		
		if (!cv.jumin.value)
		{
			alert("주민번호를 입력해주세요.");
			cv.jumin.focus();
			return false;
		}
		else if (!cv.vcode.value)
		{
			alert("백신코드를 입력해주세요.");
			cv.vcode.focus();
			return false;
		}
		else if (!cv.hospcode.value)
		{
			alert("병원코드를 선택해주세요.");
			return false;
		}
		else if (!cv.resvdate.value)
		{
			alert("예약날짜 입력해주세요.");
			cv.resvdate.focus();
			return false;
		}
		else if (!cv.resvtime.value)
		{
			alert("예약시간 입력해주세요.");
			cv.resvtime.focus();
			return false;
		}
		alert("예약이 접수되었습니다.")
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
		<h2 class="title">백신예약</h2>
		<form name="data" action="join_p.jsp" method="post" onsubmit="return checkValue()">
		<table class="table_line">
			<tr>
				<th>예약번호</th>
				<td><input name="resvno" type="text" size="20" value="<%= num %>" readonly> 예)20210011</td>
			</tr>
			<tr>
				<th>주민번호</th>
				<td><input name="jumin" type="text" size="10"> 예)790101-1000001</td>
			</tr>
			<tr>
				<th>백신코드</th>
				<td>
					<select name="vcode">
						<option hidden="" value="">백신선택</option>
						<option value="A">V001</option>
						<option value="B">V002</option>
						<option value="C">V003</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>병원코드</th>
				<td>
					<input name="hospcode" type="radio" value="H001">가_병원
					<input name="hospcode" type="radio" value="H002">나_병원
					<input name="hospcode" type="radio" value="H003">다_병원
					<input name="hospcode" type="radio" value="H004">라_병원
				</td>
			</tr>
			<tr>
				<th>예약날짜</th>
				<td><input name="resvdate" type="text" size="20"> 예)20210101</td>
			</tr>
			<tr>
				<th>예약시간</th>
				<td><input name="resvtime" type="text" size="20"> 예)0930, 1130</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit">등록</button>
					<button type="button" onclick="location.href='join.jsp'">취소</button>
					<button type="button" onclick="location.href='member_list.jsp'">백신예약현황조회</button>
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