package sec04.ex1;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class ShowMember extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String id ="", pwd="";
		Boolean isLogon=false;
		// getSession(false) 메서드를 호출하여 세션을 가져옴.
		HttpSession session = request.getSession(false);
		
		// 세션이 생성되었는지 확인
		if( session != null)
		{
			// getAttribute의 isLogon을 인자로 전달하여 로그인 상태를 가져옴.
			isLogon=(Boolean)session.getAttribute("isLogon");
			
			// isLogon이 true이면 로그인 상태이다
			if(isLogon==true)
			{
				// 로그인 아이디와 비밀번호를 가지고 옴.
				id = (String)session.getAttribute("login.id");
				pwd = (String)session.getAttribute("login.pwd");
				// 로그인 정보를 화면에 보여줌
				out.print("<html><body>");
				out.print("아이디: " + id +"<br>");
				out.print("비밀번호: "+ pwd+"<br>");
				out.print("</body></html>");
			}
			else
			{ // 로그인 상태가 아니면 로그인 창으로 이동
				response.sendRedirect("login4.html");
			}
		}
		else
		{ // 세션이 생성되지 않았으면 로그인 창으로 이동.
			response.sendRedirect("login4.html");
		}
	}

}
