<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"%>

<!-- 포매팅 태그 라이브러리를 사용하기 위해서 반드시 선언해야한다. -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>memberList</title>
</head>
<body>
	<table align="center"  border="1">
		<tr align="center" bgcolor="lightgreen">
			<td width="7%"><b>아이디</b></td>
			<td width="7%"><b>비밀번호</b></td>
			<td width="7%"><b>이름</b></td>
			<td width="7%"><b>이메일</b></td>
			<td width="7%"><b>가입일</b></td>
		</tr>
		
		<c:choose>
		<%--
			ArrayList list = request.getAttribute("memberList");
		 --%>
		 	<c:when test="${memberList != null}">
				<c:forEach var="mem" items="${memberList }">
					<tr align="center">
						<td>${mem.id }</td>
						<td>${mem.pwd }</td>
						<td>${mem.name }</td>
						<td>${mem.email }</td>
						<td>${mem.joinDate }</td>
					</tr>
				</c:forEach>
			</c:when>
		</c:choose> 	
	</table>
</body>
</html>