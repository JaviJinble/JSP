<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true" %>

<!DOCTYPE html>          
<html>
	<head>
	   <title>에러 페이지</title>
	   <meta charset="UTF-8">
	</head>
	<body>
	    ====== toString() 내용 ======= <br>
   		<%= exception.toString()  %> <br><br>
		====== getMessage()내용 =======<br>
   		<%=exception.getMessage()%> <br><br>
	   	====== printStackTrace() 내용 =======<br>
   		<% exception.printStackTrace(); %> 
   		숫자만 입력 가능합니다.다시 시도 하세요.
   		<a href='add.html'>다시하기</a>
	</body>
</html>