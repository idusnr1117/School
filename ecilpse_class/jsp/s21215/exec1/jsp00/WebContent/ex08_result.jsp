<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <% String kor = request.getParameter("kor"); %>
    <% String eng = request.getParameter("eng"); %>
    <% String mat = request.getParameter("mat"); %>
    <% String inf = request.getParameter("inf"); %>
    <% String t_date = request.getParameter("t_date"); %>
    <% String t_date_local = request.getParameter("t_date_local"); %>
    <% String r_range = request.getParameter("r_range"); %>
    <% String rmk = request.getParameter("rmk"); %>

    <p>국어 성적: <%= kor %></p>
    <p>영어 성적: <%= eng %></p>
    <p>수학 성적: <%= mat %></p>
    <p>정보 점수: <%= inf %></p>
    <p>날짜: <%= t_date %></p>
    <p>날짜 및 시간: <%= t_date_local %></p>
    <p>범위: <%= r_range %></p>
    <p>평가내용: <%= rmk %></p>
</body>
</html>