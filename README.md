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
