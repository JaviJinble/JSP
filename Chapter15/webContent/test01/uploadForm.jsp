<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
 %>


<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<%
  request.setCharacterEncoding("UTF-8");
%>    
<html>
	<head>
		<meta charset="UTF-8">
		<title>파일 업로드창</title>
	</head> 
	<body>
		<!-- 서블릿에 요청하여 파일 업로드 -->    <!-- 파일 업로드시 반드시 multipart/form-data 설정해야 함. -->    
		<form action="${contextPath }/upload.do" method="post" enctype="multipart/form-data">
		     파일1 : <input type="file" name="file1" ><br>
		     파일2 : <input type="file" name="file2" > <br>
		     이름 : <input type="text" name="param1" > <br>
		     비밀번호 : <input type="text" name="param2" > <br>
		     E-mail : <input type="text" name="param3" > <br>
			<input type="submit" value="업로드" >
		</form>
	</body>
</html>