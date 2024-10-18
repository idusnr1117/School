<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="layout/db_connect.jsp" %>

<%
	String sql = "select custno from member_tbl_02";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	rs.next();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰 회원관리</title>
<link rel="stylesheet" href="css/style.css?ver=1.1.1">
<script type="text/javascript">

    function is_numeric(value)
    {
        return /^\d+$/.test(value);
    }

    function check_value()
    {
        var cv = document.data;
        var custno_value = cv.custno.value;
        var change_element = document.getElementById("change");
        var change_element2 = document.getElementById("submit");
        var change_element3 = document.getElementById("rollback");

        if (!custno_value || custno_value.includes(" "))
        {
            alert("회원번호를 입력하세요");
            cv.custno.focus();
            return false;
        }
        if (!is_numeric(custno_value))
        {
            alert("회원번호는 숫자로만 입력해야 합니다");
            cv.custno.focus();
            return false;
        }

    }

</script>
</head>
<body>
	<header>
	    <jsp:include page="layout/header.jsp"></jsp:include>
	</header>
	
	<nav>
	    <jsp:include page="layout/nav.jsp"></jsp:include>
	</nav>
	
	<main id="section">
	    <h3 class="title">홈쇼핑 회원 정보 수정</h3>
	    <form name="data" action="z_input_inquiry.jsp" method="post" onsubmit="return check_value()">
	        <table class="table_line">
	            <tr>
	                <th>회원번호입력</th>
	                <td><input type="text" name="custno" size="10" autofocus></td>
	            </tr>
	            <tr>
	                <td colspan="2" align="center">
	                    <input id="submit" type="submit" value="조회">
	                    <input id="rollback" type="button" value="취소" onclick="document.location.href='z_input.jsp'">
	                    <input type="button" value="회원목록조회/수정" onclick="parent.location.href='member_list.jsp'">
	                </td>
	            </tr>
	        </table>
	    </form>
	</main>
	
	<footer>
	    <jsp:include page="layout/footer.jsp"></jsp:include>
	</footer>
</body>
</html>

