<%@ page language="java" contentType="text/html; charset=UTF-8"  
	pageEncoding="UTF-8"
	isELIgnored="false"  %>

<!DOCTYPE html>
<html>
	<head>
	  <meta charset="UTF-8">
	  <title>로그인창</title>
	</head>
	<body>
	    <form>
		   아이디 : <input type="text" size=20 /><br>
		   비밀번호: <input  type="password"  size=20 /><br>
		   <input  type="submit" value="로그인" /> <input type="reset" value="다시입력"  />
	    </form> 
	    <br><br>
	    <!-- 컨텍스트 이름(Chapter14)이 바뀌면 수정해야 함 -->
	    <a href= "http://localhost:8090/Chapter14/test01/memberForm.jsp">회원가입하기</a>
	    
	    <!-- 자바 코드 사용으로 화면 작업이 복잡해 질 수 있음 -->
	    <a href="<%=request.getContextPath() %>/test01/memberForm.jsp">회원가입하기</a>
	    
	    <!-- pageContext객체의 속성인 request의 contextPath 속성 사용하여 쉽게 콘텍스트 이름 가져옴. -->
	    <a href="${pageContext.request.contextPath}/test01/memberForm.jsp">회원가입하기</a>
	</body>
</html>