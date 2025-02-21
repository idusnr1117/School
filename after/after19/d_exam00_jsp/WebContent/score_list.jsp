<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="layout/db_connect.jsp" %>
<%

	String sql =    " select st.sno, st.sname, " +
					" nvl(cast(et.ekor as varchar2(3)), ' ') as ekor, " +
					" nvl(cast(et.emath as varchar2(3)), ' ') as emath, " +
					" nvl(cast(et.eeng as varchar2(3)), ' ') as eeng, " +
					" nvl(cast(et.ehist as varchar2(3)), ' ') as ehist, " +
					" nvl(cast((et.ekor + et.emath + et.eeng + et.ehist) as varchar2(3)), ' ') as 합계, " +
					" nvl(cast(round((et.ekor + et.emath + et.eeng + et.ehist) / 4, 1) as varchar2(10)), ' ') as 평균, " +
					" rank() over(order by nvl(((et.ekor + et.emath + et.eeng + et.ehist) / 4), -1) desc) as 순위 " +
					" from student_tbl_03 st " +
					" left outer join exam_tbl_03 et " +
					" on st.sno = et.sno " +
					" order by 순위, st.sno ";

	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
	
	int kor = 0;
	int math = 0;
	int eng = 0;
	int hist = 0;
	int total = 0;
	double avg_total = 0;
	int cnt = 0;
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생목록</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>

	<header>
		<jsp:include page="layout/header.jsp"></jsp:include>
	</header>
	
	<nav>
		<jsp:include page="layout/nav.jsp"></jsp:include>
	</nav>
	
	<main id="section">
		<h3 class="title">학생성적</h3>
		<table class="table_line">
			<tr align="center" bgcolor="yellow" class="type">
				<th>학번</th>
				<th>이름</th>
				<th>국어</th>
				<th>수학</th>
				<th>영어</th>
				<th>역사</th>
				<th>합계</th>
				<th>평균</th>
				<th>순위</th>
			</tr>
			<%
			while(rs.next())
			{
			%>
			<tr align="center">
				<td><%= rs.getString(1) %></td>
				<td><%= rs.getString(2) %></td>
				<td><%= rs.getString(3) %></td>
				<td><%= rs.getString(4) %></td>
				<td><%= rs.getString(5) %></td>
				<td><%= rs.getString(6) %></td>
				<td><%= rs.getString(7) %></td>
				<td><%= rs.getString(8) %></td>
				<td>
				<%
				if (!rs.getString(3).equals(" "))
				{
					kor += Integer.parseInt(rs.getString(3));
					math += Integer.parseInt(rs.getString(4));
					eng += Integer.parseInt(rs.getString(5));
					hist += Integer.parseInt(rs.getString(6));
					total += Integer.parseInt(rs.getString(7));
					avg_total += Double.parseDouble(rs.getString(8));
					cnt++;
				%>
					<%= rs.getString(9) %>	
				<%
				}
				else
				{
					
				}
				%>
				</td>
			</tr>
			<%
			}
			%>
			<tr align="center">
				<th colspan="2">총 합</th>
				<td><%= kor %></td>
				<td><%= math %></td>
				<td><%= eng %></td>
				<td><%= hist %></td>
				<td><%= total %></td>
				<td><%= avg_total %></td>
				<td></td>
			</tr>
			<tr align="center">
				<th colspan="2">총평균</th>
				<td><%= kor / cnt  %></td>
				<td><%= math / cnt  %></td>
				<td><%= eng / cnt  %></td>
				<td><%= hist / cnt  %></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</table>
	</main>
	
	<footer>
		<jsp:include page="layout/footer.jsp"></jsp:include>
	</footer>

</body>
</html>