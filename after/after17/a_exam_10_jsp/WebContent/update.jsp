<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="layout/db_connect.jsp" %>
<%

	request.setCharacterEncoding("UTF-8");

	String sql = " select * from member_tbl_02 where custno=" + request.getParameter("custno");
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	rs.next();

%>
<!DOCTYPE html>
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<head>
<meta charset="UTF-8">
<title>update</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
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
			alert("회원전화를 입력해주세요.");
			cv.phone.focus();
			return false;
		}
		else if (!cv.address.value)
		{
			alert("회원주소 입력해주세요.");
			cv.address.focus();
			return false;
		}
		else if (!cv.joindate.value)
		{
			alert("가입일자를 선택해주세요.");
			cv.joindate.focus();
			return false;
		}
		else if (!cv.grade.value)
		{
			alert("고객등급을 선택해주세요.");
			return false;
		}
		else if (!cv.city.value)
		{
			alert("도시코드를 선택해주세요.");
			cv.city.focus();
			return false;
		}
		alert("회원등록이 성공적으로 완수되었습니다!");
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
		<h2 class="title">회원등록</h2>
		<form name="data" action="update_p.jsp" method="post" onsubmit="return checkValue()">
			<table class="table_line">
			<tr>
				<th>회원번호</th>
				<td><input name="custno" type="text" size="10" value="<%= rs.getString(1) %>" readonly></td>
			</tr>
			<tr>
				<th>회원성명</th>
				<td><input name="custname" type="text" size="10" value="<%= rs.getString(2) %>" autofocus></td>
			</tr>
			<tr>
				<th>회원전화</th>
				<td><input name="phone" type="text" size="15" value="<%= rs.getString(3) %>" ></td>
			</tr>
			<tr>
				<th>회원주소</th>
				<td><input name="address" type="text" size="20" value="<%= rs.getString(4) %>" ></td>
			</tr>
			<tr>
				<th>가입일자</th>
				<td><input id="joindate" name="joindate" type="date" ></td>
			</tr>
			<tr>
				<th>고객등급</th>
				<td>
					<input name="grade" type="radio" value="A" <%= ("A".equals(rs.getString("grade"))) ? "checked" : "" %>>A-VIP
					<input name="grade" type="radio" value="B" <%= ("B".equals(rs.getString("grade"))) ? "checked" : "" %>>B-일반
					<input name="grade" type="radio" value="C" <%= ("C".equals(rs.getString("grade"))) ? "checked" : "" %>>C-직원
				</td>
			</tr>
			<tr>
				<th>도시코드</th>
				<td>
					<select id="city" name="city">
						<option value="10">서울</option>
						<option value="20">대전</option>
						<option value="30">대구</option>
						<option value="40">광주</option>
						<option value="50">성남</option>
						<option value="60">수원</option>
						<option value="70">분당</option>
						<option value="80">용인</option>
						<option value="90">과천</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit">등록</button>
					<button type="button" onclick="location.href='join.jsp'">취소</button>
					<button type="button" onclick="location.href='member_list.jsp'">조회</button>
				</td>
			</tr>
		</table>
		<script>
			document.getElementById("city").value="<%= rs.getString("city") %>";
			document.getElementById("joindate").value= new Date("<%= rs.getString("joindate") %>").toISOString().substring(0, 10);
		</script>
		</form>
	</main>
	
	<footer>
		<jsp:include page="layout/footer.jsp"></jsp:include>
	</footer>

</body>
</html>