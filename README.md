# JSP
3월 9일 <br>
스플릿 서버를 연결하는데 많은 어려움이 있었다. 이번 기회로 톰캣 서버 연결하는법을 습득했다
<br>
3월 14일 <br>
오늘 에러가 발생한 이유는 web.xml 화면과 ThirdServlet 서블릿에 <servlet-mapping>이 중복이 되어 문제가 발생하였다.
<br>
3월 16일 <br>
서블릿의 응답 처리 방법과 GET 방식 서블릿 요청과 POST 방식 서블릿 요청하는 방법을 습득했다. 
<br>
404에러 발생시 경로 문제에서 맵핑 문제로 @WebServlet("/login5") 로 해결함 <br>
 3/20까지 제출해야하는  \JSP\Chapter06\src\sec04\ex01에 LoginTest,LoginTest2 서블릿 생성하여 해결. 그리고 \JSP\Chapter06\webContent 에 test01 폴더를 생성하여
login.html 을 만들어 작성함. 교재에 나온대로 login.html에서 LoginTest2를 매핑하도록 수정한 내용을 추가했다. <br>
3월 21일 <br>
 오늘 DB를 사용하여 서블릿으로 회원 정보 테이블의 회원 정보 조회를 해보았다 <br>
3월 23일 <br>
 DataSource 이용해 데이터베이스 연동해보았다<br>
3월 28일 <br>
 서블릿으로 회원 추가하기와 삭제하기를 작성했다 이과정중 정상적인 회원 등록이 안되어 원인을 찾아보니 변수 command이 null 값이였어 확인해보니
 memberForm.html 코드 부분에서 줄53에서 name="command"을 value="command" 로 작성되어 있어서 문제가 있어 바꿔주니 해결이 되었다.
<br>
3월 30일 <br>
 서블릿의 여러 가지 포워드 방법을 사용해 포워드를 해보았다. redirect, refresh, location 방법은 서블릿이 웹 브라우저를 거쳐 다른 서블릿이나 JSP에게 요청하는 방법이다. 반면에 dispatch 방법은 서블릿에서 클라이언트를 거치지 않고 바로 다른 서블릿에게 요청하는 방법이다. 네 가지 모두 사용해보고 각각의 사용법과 차이점을 익혀두는 것이 좋다.
<br>
4월 4일 <br>
ServletContext와 ServletConfig 사용법 배워 앞으로의 웹 프로그래밍 개발 시 유용한 기능을 제공하는 클래스들을 배워 보았다.
<br>
4월 6일 <br>
load-on-startup을 사용해 실행 시간을 단축한다 왜냐하면 서블릿은 브라우저에서 최초 요청 시 init() 메서드를 실행한 후 메모리에 로드되어 기능을 수행한다. 따라서 실행 시간이 길어질 수 밖에 없다.
 <br>
4월 11일 <br>
 세션 쿠키 사용하기를 하면서 브라우저가 사용하는 메모리에 저장하는 Session 쿠키를 생성해 보았다.
 <br>
 4월 18일 <br>
 Filter API 필터란 브라우저에서 서블리에 요청하거나 응답할 때 미리 요청이나 응답과 관련해 여러 가지 작업을 처리하는 기능이다.
 <br>
4월 13일 <br>
세션을 이용한 로그인 예제를 풀어봄.
<br>
5월 4일 <br>
jsp.file 생성하고 기초를 배움.
 <br>
5월 9일 <br>
jsp.file 예제 코드작성.
 <br>
5월 11일 <br>
jsp 에러 코드에 따른 예외 페이지 , jsp welcome 파일 지정하기 했고 스크립트 요소 이용해 회원 정보 조회하기
 <br>
5월 16일 <br>
 JSP는 스크립트릿의 자바 코드를 제거하고 디자이너 입장에서 더 쉽고 편리하게 작업할 수 있는 태그 형태로 기능을 제공하게 되었다.
 <br>
 5월 23일 <br>
 https://stackoverflow.com/questions/8021370/java-lang-noclassdeffounderror-javax-servlet-jsp-tagext-taglibraryvalidator
 <br>
5월 29일 <br>
 14.10 포매팅 태그 라이브러리<br>
14.12 표현 언어와 JSTL을 이용한 회원 관리 실습<br>
