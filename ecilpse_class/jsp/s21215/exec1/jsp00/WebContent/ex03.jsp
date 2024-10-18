<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	안녕하세요~<br>
	현재 시간은 <%= new java.util.Date() %> 입니다.<br>
	클라이언트IP : <%= request.getRemoteAddr() %> 입니다.<br>
	요청정보 길이 : <%= request.getContentLength() %> 입니다.<br>
	요청정보 인코딩 : <%= request.getCharacterEncoding() %> 입니다.<br>
	요청정보 문서타입 : <%= request.getCharacterEncoding() %> 입니다.<br>
	요청정보 전송방식 : <%= request.getMethod() %> 입니다.<br>
	요청 URL : <%= request.getRequestURL() %> 입니다.<br>
	요청 URI : <%= request.getRequestURI() %> 입니다.<br>
	컨텍스트 경로 : <%= request.getContextPath() %> 입니다.<br>
	서버 이름 : <%= request.getServerName() %> 입니다.<br>
	서버 경로 : <%= request.getServerPort() %> 입니다.<br>
	<hr>
</body>
</html>