<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"  %>
<%
   request.setCharacterEncoding("UTF-8");
	// 표현식으로 출력하기 위해 회원 정보 가져옴.
   String id=(String)request.getAttribute("id");
   String pwd=(String)request.getAttribute("pwd");
   String name=(String)session.getAttribute("name");
   String email=(String)application.getAttribute("email");  
%>   
<html>
	<head>
		<meta charset=”UTF-8">
		<title>회원 정보 출력창</title>
	</head>
	<body>
		<table border="1"  align="center" >
		    <tr align="center" bgcolor="#99ccff">
		      <td width="20%"><b>아이디</b></td>
		      <td width="20%"><b>비밀번호</b></td>
		      <td width="20%"><b>이름</b></td>
		      <td width="20%"><b>이메일</b></td>
		   </tr>
		   <tr align=center>
		   <!--  -->
		      <td>${membersList[0].id }</td>
		      <td>${membersList[0].pwd }</td>
		      <td>${membersList[0].name }</td>
		      <td>${membersList[0].email }</td>
		      <!-- <td>${requestScope.address}</td> -->
		   </tr>
		   <tr align=center>
		   <!--  -->
		      <td>${membersList[1].id }</td>
		      <td>${membersList[1].pwd }</td>
		      <td>${membersList[1].name }</td>
		      <td>${membersList[1].email }</td>
		      <!-- <td>${requestScope.address}</td> -->
		   </tr>
		</table>
	</body>
</html>