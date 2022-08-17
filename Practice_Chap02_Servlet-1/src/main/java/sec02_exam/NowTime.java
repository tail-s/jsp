package sec02_exam;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/NowTime")
public class NowTime extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public NowTime() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//문자셋 지정
		response.setContentType("text/html; charset=utf-8");
		
		//서블릿은 JSP표준 이전에 등장한 표준이다. 물론 자바 웹 어플리케이션 개발을 목적으로 말이다.
		//하여 지금까지 살펴본 web.xml맵핑과 어노테이션 맵핑방법이 있는데, 어노테이션 맵핑을 하게 되면 프로그램 개발을 완성한 후 릴리즈를 했는데 수정 시 자바소스파일을 수정해야되고, 
		//아울러 재컴파일을 계속 하게 될것이다. 유지 보수가 그렇게 용이한 편이 아니다.
		//web.xml을 이용해서 맵핑하는 방법이 낫긴 하지만, 이것은 경우에 따라서 각각 다르게 구현이 되어야 할것이다.		
		
		PrintWriter out = response.getWriter();
		out.println("<HTML>");
		out.println("<HEAD><TITLE>현재 시간</TITLE></HEAD>");
		out.println("<BODY>");
		out.println("지금 시각은");
		out.println(new Date());
		out.println("입니다.");
		out.println("</BODY>");
		out.println("</HTML>");
		out.close();
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
