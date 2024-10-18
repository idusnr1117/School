<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="layout/db_connect.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	String sql = "UPDATE member_tbl_02 SET "
	           + "custno = ?, "
	           + "custname = ?, "
	           + "phone = ?, "
	           + "address = ?, "
	           + "joindate = ?, "
	           + "grade = ?, "
	           + "city = ? "
	           + "WHERE custno = ?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	try
	{
	    pstmt.setInt(1, Integer.parseInt(request.getParameter("custno")));
	    pstmt.setString(2, request.getParameter("custname"));
	    pstmt.setString(3, request.getParameter("phone"));
	    pstmt.setString(4, request.getParameter("address"));
	    pstmt.setString(5, request.getParameter("joindate"));
	    pstmt.setString(6, request.getParameter("grade"));
	    pstmt.setString(7, request.getParameter("city"));
	    
	    pstmt.setInt(8, Integer.parseInt(request.getParameter("custno")));
	
	    pstmt.executeUpdate();
	}
	catch (Exception e)
	{
	    e.printStackTrace();    
	}

	
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