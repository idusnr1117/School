<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청을 받음</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8"); // 한글 관련해서 필히 해주셔야 합니다.
		String name = request.getParameter("name");
		System.out.println("전송받은 값 : " + name);
	%>
	전송 받은 값 : <%= name %> <br>
	<%
		if (name.equals("천경호") || name.equals("김관태") || name.equals("양현욱"))
		{
	%>		
			<%= name %>님 사랑합니다 정말 환영하지 말입니다!^^.
	<% 	}
		else
		{
			%>
			누구세요? <br> <%= name %> ?? 어디서 오셨습니까?
	<%	} %>
	
</body>
</html>