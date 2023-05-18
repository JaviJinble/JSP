<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>

<html>
	<head>
	<meta charset="UTF-8">
		<title>표현언어에서 사용되는 데이터들과 표현언어의 여러 가지 연산자들</title>
	</head>
	<body>
		<h2>표현언어로 여러 가지 데이터 출력하기</h2>		
		
		\${100}: ${100}<br>
		\${"안녕하세요"}: ${"안녕하세요"}<br>
		\${10+1}: ${10+1}<br>
		\${"10"+1} : ${"10"+1 }<br>
		\${null+10 }: ${null+10 }<br> 
		
		<%--문자끼리, 문자와 숫자는 더하기 연산이 안됨. --%>
	<%--\${"안녕"+11 }: ${"안녕"+11 }<br> --%> 
	<%--\${"hello"+"world"}:${"hello"+"world"}<br> --%> 
		 
		 
		<h2>여러 가지 산술 연산자</h2>		   
		\${10+10}  : ${10+10} <br>
		\${20-10}  : ${20-10}  <br>
		\${10*10}  : ${10*10} <br>
		\${100/9} : ${100/9} <br>
		\${100 div 9} : ${100 div 9} <br> 
		\${100%9} : ${100%9}<br>
		\${100 mod 9} : ${100 mod 9}<br>
		
		   
		<h2>여러 가지 비교 연산자</h2>
		
		\${10==10} : ${10==10} <br>
		\${10 eq 10} : ${10 eq 10} <br><br>
		\${"hello"=="hello"} : ${"hello"=="hello"} <br>
		\${"hello" eq "hello"} : ${"hello" eq "hello"} <br><br>
		
		\${20!=10} : ${20!=10}<br>
		\${20 ne 10} : ${20 ne 10}<br><br>
		\${"hello"!="apple"} : ${"hello"!="apple"} <br>
		\${"hello" ne "apple"} : ${"hello" ne "apple"} <br><br>
		\${10 < 10} : ${10 < 10} <br>
		\${10 lt 10} : ${10 lt 10} <br><br>
		\${100>10} : ${100 > 10}<br>
		\${100 gt 10} : ${100 gt 10}<br><br>
		\${100 <=10} : ${100 <= 10}<br>
		\${100 le 10} : ${100 le 10}<br><br>
		\${100 >=10} : ${100 >= 10}<br>
		\${100 ge 10} : ${100 ge 10}<br><br>


		<h2>여러가지 논리연산자</h2>
		
		\${(10==10) && (20==20)}  : ${(10==10)&&(20==20)} <br>
		\${(10==10) and (20!=20)}  : ${(10==10) and (20!=20)} <br><br>
		
		\${(10==10) || (20!=30)}  : ${(10==10)||(20==30)} <br>
		\${(10!=10) or (20!=20)}  : ${(10!=10) or (20!=20)} <br><br>
		
		\${!(20==10)}  : ${!(20==10)}<br>
		\${not (20==10)}  : ${not (20==10)}<br><br>
		
		\${!(20!=10)}  : ${!(20!=10)}<br>
		\${not(20!=10)}  : ${not(20!=10)}<br><br>      
		

		
		<h2>empty 연산자</h2>
		
		<jsp:useBean  id="m1"  class="sec01.ex01.MemberBean" scope="page"  />
		<jsp:setProperty  name="m1"  property="name" value="이순신"/>
		<jsp:useBean  id="m2"  class="java.util.ArrayList" scope="page"  />
		
		\${empty m1 } : ${empty m1 } <br>
		\${not empty m1 } : ${not empty m1 } <br><br>
		
		\${empty m2 } : ${empty m2 } <br>
		\${not empty m2} : ${not empty m2 } <br><br>
		
	</body>
</html>