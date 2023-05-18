<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("utf-8");
	// 주소 정보 바인딩
  request.setAttribute("address","부산시 사상구");
%>    

<html>
	<head>
	   <meta charset=”UTF-8">
	   <title>forward</title>
	</head>
	<body>
		<!-- 포워딩 -->
	    <jsp:forward page="member2.jsp"></jsp:forward>
	</body>
</html>
