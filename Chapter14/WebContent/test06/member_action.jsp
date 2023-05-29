<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"
    import="java.util.*,sec01.ex03.*"%>

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
	<title>memberAction</title>
	<jsp:useBean id="m" class ="sec02.ex01.MemberBean"/>
	<jsp:setProperty name="m" property="*"/>

	<%
		MemberDAO memberDAO = new MemberDAO();
		memberDAO.addMember(m);
		List memberList = memberDAO.listMembers();
		request.setAttribute("memberList",memberList);
	%>
</head>
<body>
	<jsp:forward page="memberList.jsp"/>
</body>
</html>