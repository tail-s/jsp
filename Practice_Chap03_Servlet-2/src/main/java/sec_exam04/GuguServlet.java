package sec_exam04;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/gugu")
public class GuguServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public GuguServlet() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		
		//getParameter()는 리턴타입이 String이므로 숫자로 바꾸어 준다.
		int number = Integer.parseInt(request.getParameter("number"));
		
		//예외를 처리하는 코드
		if(number < 1 || number > 9) {
			writer.print("<html><head></head></body>");
			writer.print("<h1>구구단은 2~9단 사이로 입력 가능합니다.</h1>");
			writer.print("</body></html>");
			return;
		}
		
		writer.print("<table border=1 width=800 align=center>");
		writer.print("<tr align=center bgcolor='#ffff66'>");
		writer.print("<td colspan=4>" + number + "단 출력</td>");
		
		for(int i=1; i<10; i++) {
			//홀수 짝수에 따라 배경색을 바꾸어주는 코드
			if(i % 2 == 0) {
				writer.print("<tr align=center bgcolor='#ACFA58'>");
			}
			else {
				writer.print("<tr align=center bgcolor='#81BEF7'>");
			}
			writer.print("<td width=200>" + number + "</td>");
			writer.print("<td width=200>" + i + "</td>");
			writer.print("<td width=200>" + number + "*" + i + "</td>");
			writer.print("<td width=200>" + number * i + "</td>");
			writer.print("</tr>");
		}
		writer.print("</table>");
		writer.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
