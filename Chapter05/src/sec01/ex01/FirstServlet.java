package sec01.ex01;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class FirstServlet extends HttpServlet{// HttpSevlet를 상속받습니다.

	@Override 
	public void init() throws ServletException { //진입 *새로고침시 진입안함 시작할때 한번
		// TODO Auto-generated method stub
		System.out.println("init 메소드 호출");
	}

	@Override // 브라우저를 요청을 처리합니다
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet 메소드 호출");
	}
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("destroy 메소드 호출");
	}

}
