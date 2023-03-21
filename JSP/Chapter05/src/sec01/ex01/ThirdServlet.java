package sec01.ex01;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class ThirdServlet
 */
@WebServlet("/third") // 에러가 발생한 이유는 web.xml 화면과 ThirdServlet 서블릿에 <servlet-mapping>이 중복이 되어 문제가 발생하였다.
public class ThirdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		System.out.println("third init 메소드 호출");
	}


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("third doGet 메소드 호출");
	}
	
	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		System.out.println("third destroy 메소드 호출");
	}

}
