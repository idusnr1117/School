<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "system";
	String pw = "1234";
	
	Connection conn = null;
	
	try
	{
		Class.forName("oracle.jdbc.OracleDriver");
		conn = DriverManager.getConnection(url, id, pw);
		System.out.println("DB 연결 성공!");
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
<title>db_connect</title>
</head>
<body>

</body>
</html>