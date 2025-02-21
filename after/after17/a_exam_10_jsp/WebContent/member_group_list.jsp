<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="layout/db_connect.jsp" %>
<%

	String sql =  "SELECT decode(grade, 'A', 'VIP', 'B', '일반', 'C', '직원', '에러'), "
	         + "decode(city, '10', '서울', '20', '대전', '30', '대구', '40', '광주', '50', '성남', '60', '수원', '70', '분당', '80', '용인', '90', '과천', '에러'), "
	         + "count(*), "
	         + "(SELECT count(*) FROM member_tbl_02 m2 WHERE m2.grade = m1.grade) AS grade_sum "
	         + "FROM member_tbl_02 m1 "
	         + "GROUP BY grade, city "
	         + "ORDER BY grade, city";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
	sql =  " select count(*) "
			+ " from member_tbl_02 ";

	pstmt = conn.prepareStatement(sql);

	ResultSet rs3 = pstmt.executeQuery();
	rs3.next();
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memeber_list</title>
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
		<h2 class="title">회원목록조회/수정</h2>
		<table class="table_line">
		    <tr bgcolor="green">
		        <th>GRADE</th>
		        <th>지역명</th>
		        <th>인원수</th>
		    </tr>
		    <%
		    String currentGrade = ""; // 현재 GRADE를 추적할 변수
		    int gradeSum = 0; // GRADE별 합계 저장 변수
		    
		    while(rs.next())
		    {
		        String grade = rs.getString(1); // GRADE
		        String region = rs.getString(2); // 지역명
		        int count = rs.getInt(3); // 인원수
		        int totalGradeCount = rs.getInt(4); // 해당 GRADE의 총 합계
		        
		        // GRADE가 바뀌면 이전 GRADE의 합계를 출력
		        if (!grade.equals(currentGrade))
		        {
		            if (!currentGrade.equals(""))
		            {
		                // 이전 GRADE의 합계 출력
		                out.println("<tr align='center'>");
		                out.println("<td>" + currentGrade + "</td>");
		                out.println("<td>***합계</td>");
		                out.println("<td>" + gradeSum + "</td>");
		                out.println("</tr>");
		            }
		            
		            // 새로운 GRADE로 넘어갔을 때의 합계 초기화
		            currentGrade = grade;
		            gradeSum = 0; // 합계를 리셋
		        }
		        
		        // 현재 행 출력
		        out.println("<tr align='center'>");
		        out.println("<td>" + grade + "</td>");
		        out.println("<td>" + region + "</td>");
		        out.println("<td>" + count + "</td>");
		        out.println("</tr>");
		        
		        // GRADE별 합계 누적
		        gradeSum += count;
		    }
		
		    // 마지막 GRADE 합계 출력 (루프 끝난 후)
		    if (!currentGrade.equals(""))
		    {
		        out.println("<tr align='center'>");
		        out.println("<td>" + currentGrade + "</td>");
		        out.println("<td>***합계</td>");
		        out.println("<td>" + gradeSum + "</td>");
		        out.println("</tr>");
		    }
		    %>
		
		    <tr align="center">
		        <th>전체합계</th>
		        <td></td>
		        <td><%= rs3.getString(1) %></td>
		    </tr>
		</table>

	</main>
	
	<footer>
		<jsp:include page="layout/footer.jsp"></jsp:include>
	</footer>

</body>
</html>