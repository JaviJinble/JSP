<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	//	session과 application 내장 객체에 바인딩
 	request.setAttribute("name", "김명준");
 	request.setAttribute("address","부산시 사상구");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 스코프 테스트1</title>
</head>
<body>
<%
	RequestDispatcher dispatch = request.getRequestDispatcher("request2.jsp");
	dispatch.forward(request, response);
%>
</body>
</html>