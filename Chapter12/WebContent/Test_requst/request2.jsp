<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	String name=(String)request.getAttribute("name");
 	String address = (String)request.getAttribute("address");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session 내장 객체 스코프 테스트2</title>
</head>
<body>
	<h1>이름 <%= name %> 입니다.</h1> <br>
	<h1>주소는 <%= address %> 입니다.</h1> <br>
</body>
</html>