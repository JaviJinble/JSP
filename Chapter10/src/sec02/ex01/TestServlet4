import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/*")
/*@WebServlet("/*")*/
public class TestServlet4 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String context = request.getContextPath(); // context 이름 가져옴.
		String url = request.getRequestURL().toString(); // 전체 URL 가져옴
		String mapping = request.getServletPath(); // 매핑 이름 가져옴
		String uri = request.getRequestURI(); // URI 가져옴
		
		out.print("<html>");
		out.print("<head>");
		out.print("<title>Test Servlet4</title>");
		out.print("</head>");
		out.print("<body bgcolor='pink'>");
		out.print("<b>TestServlet4입니다.</b><br>");
		out.print("<b>컨텍스트명 : "+context+"</b><br>");
		out.print("<b>전체경로 : "+url+"</b><br>");
		out.print("<b>매핑명 : "+mapping+"</b><br>");
		out.print("<b>URI : "+uri+"</b><br>");
		out.print("</body>");
		out.print("</html>");
		
	}

}
