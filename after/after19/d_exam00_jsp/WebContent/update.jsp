<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="layout/db_connect.jsp" %>
<%

	request.setCharacterEncoding("UTF-8");

	String sql =  " select nvl(ekor, 0), nvl(emath, 0), "
				+ " nvl(eeng, 0), nvl(ehist, 0) "
				+ " from exam_tbl_03 "
				+ " where sno=" + request.getParameter("sno");
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
	
	int kor = 0;
	int eng = 0;
	int math = 0;
	int hist = 0;
	
	if (rs.next())
	{
		kor = Integer.parseInt(rs.getString(1));
		eng = Integer.parseInt(rs.getString(2));
		math = Integer.parseInt(rs.getString(3));
		hist = Integer.parseInt(rs.getString(4));
	}
		

%>
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
		
		if (cv.ekor.value < 0 || !cv.ekor.value || cv.ekor.value > 100)
		{
			alert("국어성적을 입력해주세요.");
			cv.ekor.focus();
			return false;
		}
		else if (cv.emath.value < 0 || !cv.emath.value || cv.emath.value > 100)
		{
			alert("수학성적을 입력해주세요.");
			cv.emath.focus();
			return false;
		}
		else if (cv.eeng.value < 0 || !cv.eeng.value || cv.eeng.value > 100)
		{
			alert("영어성적을 입력해주세요.");
			cv.eeng.focus();
			return false;
		}
		else if (cv.ehist.value < 0 || !cv.ehist.value || cv.ehist.value > 100)
		{
			alert("역사성적을 입력해주세요.");
			cv.ehist.focus();
			return false;
		}
		alert("학생 성적이 모두 입력되었습니다.");
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
		<h3 class="title">성적수정/입력</h3>
		<form name="data" action="update_p.jsp" method="post" onsubmit="return checkValue()">
		<table class="table_line">
			<tr>
				<th>학번</th>
				<td><input name="sno" type="text" value="<%= request.getParameter("sno") %>" readonly></td>
			</tr>
			<tr>
				<th>국어점수</th>
				<td><input name="ekor" type="number" value="<%= kor %>" autofocus></td>
			</tr>
			<tr>
				<th>수학점수</th>
				<td><input name="emath" type="number" value="<%= math %>"></td>
			</tr>
			<tr>
				<th>영어점수</th>
				<td><input name="eeng" type="number" value="<%= eng %>"></td>
			</tr>
			<tr>
				<th>역사점수</th>
				<td width="100px"><input name="ehist" type="number" value="<%= hist %>"></td>
			</tr>
			<tr align="center">
				<td colspan="2">
					<button type="submit">저장하기</button>
					<button type="button" onclick="location.href='update.jsp?sno=<%= request.getParameter("sno") %>'">다시입력</button>
					<button type="button" onclick="location.href='fixed.jsp'">학생목록조회수정삭제</button>
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