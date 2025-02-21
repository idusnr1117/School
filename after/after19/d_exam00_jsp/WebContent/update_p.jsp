<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="layout/db_connect.jsp" %>
<%

	request.setCharacterEncoding("UTF-8");

	String sql = " select * from exam_tbl_03 where sno=" + request.getParameter("sno");
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();

	if (rs.next())
	{
		sql = "update exam_tbl_03 set ekor = ?, emath = ?, eeng = ?, ehist = ? where sno = ?";
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setInt(1, Integer.parseInt(request.getParameter("ekor")));
		pstmt.setInt(2, Integer.parseInt(request.getParameter("emath")));
		pstmt.setInt(3, Integer.parseInt(request.getParameter("eeng")));
		pstmt.setInt(4, Integer.parseInt(request.getParameter("ehist")));
		pstmt.setInt(5, Integer.parseInt(request.getParameter("sno")));
	}
	else
	{
		sql = "insert into exam_tbl_03 values(?, ?, ?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setInt(1, Integer.parseInt(request.getParameter("sno")));
		pstmt.setInt(2, Integer.parseInt(request.getParameter("ekor")));
		pstmt.setInt(3, Integer.parseInt(request.getParameter("emath")));
		pstmt.setInt(4, Integer.parseInt(request.getParameter("eeng")));
		pstmt.setInt(5, Integer.parseInt(request.getParameter("ehist")));

	}
	
	pstmt.executeUpdate();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생목록</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>

	<jsp:forward page="fixed.jsp"></jsp:forward>

</body>
</html>