<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="layout/db_connect.jsp" %>
<%
	
	request.setCharacterEncoding("UTF-8");

	String sql = " insert into tbl_vaccresv_202108 values(?, ?, ?, ?, ?, ?)";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1, request.getParameter("resvno"));
	pstmt.setString(2, request.getParameter("jumin"));
	pstmt.setString(3, request.getParameter("hospcode"));
	pstmt.setString(4, request.getParameter("resvdate"));
	pstmt.setString(5, request.getParameter("resvtime"));
	pstmt.setString(6, request.getParameter("vcode"));
	
	pstmt.executeUpdate();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join</title>
</head>
<body>

	<jsp:forward page="join.jsp"></jsp:forward>

</body>
</html>