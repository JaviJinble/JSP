<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	String name=(String)session.getAttribute("name");
 	String address = (String)session.getAttribute("address");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session 내장 객체 테스트2</title>
</head>
<body>
	이름 <%= name %> 입니다. <br>
	주소는 <%= address %> 입니다. <br>
	<!--  <a href = session3.jsp>세번째 페이지로 이동</a>  -->
</body>
</html>