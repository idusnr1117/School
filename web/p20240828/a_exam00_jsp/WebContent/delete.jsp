<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="layout/db_connect.jsp" %>
<%

	request.setCharacterEncoding("UTF-8");
	
	String sql = "delete from member_tbl_02 where custno=" + request.getParameter("custno");
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.executeUpdate();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="member_list.jsp"></jsp:forward>
</body>
</html>