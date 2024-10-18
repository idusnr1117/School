<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="layout/db_connect.jsp" %>
<%
	String sql = ""
			+ " SELECT MB.custno, custname,   				  "
	        + "    	CASE                      				  "
	        + "			when grade = 'A' then 'VIP' 		  "
			+ "			when grade = 'B' then '일반'           "
			+ "			when grade = 'C' then '직원'           "
	        + "     END grade,                                "
	        + "     SUM(price) AS 매출                         "
	        + " FROM member_tbl_02 MB                         "
	        + " JOIN money_tbl_02 MY ON MB.custno = MY.custno "
	        + " GROUP BY MB.custno, MB.custname, MB.grade     "
	        + " ORDER BY 매출 DESC							  ";

	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css?ver1.1.1">
</head>
<body>
	
	<header>
        <jsp:include page="layout/header.jsp"></jsp:include>
    </header>
    
    <nav>
        <jsp:include page="layout/nav.jsp"></jsp:include>
    </nav>
    
    <main id="section">
        <h3 class="title">회원매출조회</h3>
       	<div class="scroll">
       	<table class="table_line">
            <tr align="center">
                <th>회원번호</th>
                <th>회원성명</th>
                <th>고객등급</th>
                <th>매출</th>
            </tr>
            <% while(rs.next()) { %>
            <tr align="center">
                <td><%= rs.getString("custno") %></td>
                <td><%= rs.getString("custname") %></td>
                <td>
                <% 
				    String grade = rs.getString("grade");
				    if (grade.equals("VIP") || grade.equals("일반") || grade.equals("직원")) { 
				    %>
				        <%= grade %>
				    <% 
				    }
				    else
				    { 
				    %>
				        Error : <%= grade %>
				    <% 
				    } 
				    %>
                </td>
                <td><%= rs.getString("매출") %></td>
            </tr>
            <% } %>
        </table>
       	</div>
    </main>
    
    <footer>
        <jsp:include page="layout/footer.jsp"></jsp:include>
    </footer>
    
</body>
</html>