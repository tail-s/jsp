package sec_exam03;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/CP")
public class ContextinitParam extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ContextinitParam() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet() 호출");
		//getServletContext()를 이용해서 web.xml파일의 context-param값들을 가져와 쓸 수 있다.
		String id = this.getServletContext().getInitParameter("id");
		String pw = this.getServletContext().getInitParameter("pw");
		String path = this.getServletContext().getInitParameter("path");
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<html><head></head><body>");
		out.println("아이디 : " + id + "<br>");
		out.println("비밀번호 : " + pw + "<br>");
		out.println("경로 : " + path + "<br>");
		out.println("</body></html>");
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
