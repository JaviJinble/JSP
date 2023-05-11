<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
	  <meta charset="UTF-8">
	  <title>회원 검색창</title>
	  
	  <style type="text/css">
	  	input {
			padding: 6px 12px;
			border-radius: 6px;
			color: #495057;
			border: 2px solid #ced4da;
			font-family: inherit;
			font-size: inherit;
			line-height: inherit;
		}
	  </style>
	</head>
	<body>
	   <form method="post" action="member.jsp">
		   이름 : <input type="text" name="name">
		   <input type ="submit" value="조회하기">
	   </form>
	</body>
</html>