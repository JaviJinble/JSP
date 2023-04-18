package sec03.ex01;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

//@WebServlet("/login")
public class LoginSevlet extends HttpServlet {
	public void init() {
		System.out.println("init 메서드 호출");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 한글 전송시 인코딩 작업 생략 - Filter로 처리.
		// request.setCharacterEncoding("utf-8");
		// response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		
		String user_name = request.getParameter("user_name");
		String user_pw = request.getParameter("user_pw");
		
		
		String data="안녕하세요!<br> "+user_name+"님 환영합니다.<br><br>";
		data+="<html><body>";
		data+="아이디 : "+user_name;
		data+="<br>";
		data+="패스워드 : "+user_pw;
		data+="<br>";
		data+="</body></html>";
		out.print(data);
	}
	
	public void destroy() 
	{
		System.out.println("destroy 메서드 호출");
	}

}
