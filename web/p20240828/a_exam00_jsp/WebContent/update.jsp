<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="layout/db_connect.jsp" %>
<% 
	String sql = "SELECT custno, custname, phone, address, "
	           + "TO_CHAR(joindate, 'yyyymmdd') joindate, grade, city "
	           + "FROM member_tbl_02 WHERE custno =" + request.getParameter("custno");

	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css?ver1.1.1">
<script type="text/javascript">
	function checkValue() 
	{
		var cv = document.data;	
		if (!cv.custname.value)
		{
			alert("회원성명을 입력해주세요.");
			cv.custno.focus();
			return false;
		}
		else if (!cv.phone.value)
		{
			alert("전화번호를 입력해주세요.");
			cv.phone.focus();
			return false;
		}
		else if (!cv.address.value)
		{
			alert("회원전화를 입력해주세요.");
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
			cv.joindate.focus();
			return false;
		}
		else if (!cv.city.value)
		{
			alert("도시코드를 입력해주세요.");
			cv.city.focus();
			return false;
		}
		alert("회원정보 수정이 완료되었습니다.")
	}
	
	function checkDelete(custno) 
	{
		msg="삭제하시겠습니까?";
		if(confirm(msg) != 0)
		{
			location.href="delete.jsp?custno=" + custno;
			alert("삭제되었습니다.");
		}
		else
		{
			alert("삭제를 취소했습니다.");
			return;
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
		<h3 class="title">홈쇼핑 회원 등록</h3>
		<form name="data" action="update_p.jsp" method="post" onsubmit="return checkValue()">
			<table class="table_line">
				<tr>
					<th>회원번호</th>
					<td><input type="text" name="custno" value="<%= rs.getString("custno") %>" size="10" readonly></td>
				</tr>
				<tr>
					<th>회원성명</th>
					<td><input type="text" name="custname" value="<%= rs.getString("custname") %>" size="10"></td>
				</tr>
				<tr>
					<th>회원전화</th>
					<td><input type="text" name="phone" value="<%= rs.getString("phone") %>" size="15"></td>
				</tr>
				<tr>
					<th>회원주소</th>
					<td><input type="text" name="address" value="<%= rs.getString("address") %>" size="20"></td>
				</tr>
				<tr>
					<th>가입일자</th>
					<td><input type="text" name="joindate" value="<%= rs.getString("joindate") %>" size="10"></td>
				</tr>
				<tr>
					<th>고객등급[A:VIP, B:일반, C:직원]</th>
					<td><input type="text" name="grade" value="<%= rs.getString("grade") %>" size="10"></td>
				</tr>
				<tr>
					<th>도시코드</th>
					<td><input type="text" name="city" value="<%= rs.getString("city") %>" size="10"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="수정">		
						<input type="button" value="조회" onclick="location.href='member_list.jsp'">
						<input type="button" value="삭제" onclick="return checkDelete(<%= rs.getString("custno") %>)">
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