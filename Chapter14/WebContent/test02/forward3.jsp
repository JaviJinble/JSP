<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.*, sec01.ex01.*" pageEncoding="UTF-8"
    isELIgnored="false"%>
<%
  request.setCharacterEncoding("utf-8");
  // 객체 생성
  List membersList = new ArrayList();
  // MemberBeadn 객체 생성하여 회원 정보를 속성을 설정한다
  MemberBean m1 = new MemberBean("lee", "1234", "이순신", "lee@test.com");
  MemberBean m2 = new MemberBean("son", "1234", "손흥민", "son@test.com");
  // 2개의 MemberBean 객체를 ArrayList에 저장
  membersList.add(m1);
  membersList.add(m2);
  // 주소 정보 바인딩
  request.setAttribute("membersList", membersList);
%>    

<html>
	<head>
	   <meta charset=”UTF-8">
	   <title>forward3</title>
	</head>
	<body>
		<!-- 포워딩 -->
	    <jsp:forward page="member3.jsp"></jsp:forward>
	</body>
</html>
