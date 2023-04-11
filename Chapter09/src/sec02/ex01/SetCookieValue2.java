package sec02.ex01;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.Date;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class SetCookieValue2 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		Date d=new Date();
		Cookie c=new Cookie("cookieTest",URLEncoder.encode("JSP프로그래밍입니다.","utf-8"));
		//c.setMaxAge(24*60*60);
		// 유효기간 설정 음수로 지정하여 session 쿠키 만듬
		// 브라우저 종료 시 종료.
		c.setMaxAge(-1);
		
		// 생성된 쿠키를 브라우저로 전송
		response.addCookie(c);
		
		out.println("현재시간 : "+d);
		out.println("문자열을 Cookie에 저장합니다.");
	}

}
