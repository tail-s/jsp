package sec01_exam;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

//servlet패키지에 예외가 발생하면, 프로젝트 우클릭 후 build path -> libraries -> add external jars -> 톰캣폴더/lib -> jsp-api.jar, servlet_api.jar 추가를 해주면 됨.

/**
 * Servlet implementation class HelloWorld
 */
//URL매핑코드가 @WebServlet어노테이션에 명기되어 있다. 서블릿 파일이 되면 HttpServlet클래스를 자동으로 상속받는다.
//@WebServlet어노테이션보다 web.xml에서 지정한 매핑코드의 우선순위가 훨씬 높다.
//@WebServlet("/HWorld")	//web.xml에서 맵핑한 것이 우선순위가 있으므로 이 부분을 주석처리 해도 상관없다. > web.xml에서 맵핑한대로 출력된다.
public class HelloWorld extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public HelloWorld() {        
    }
	
    //여기서 2가지의 메서드가 나오는데(doGet(), doPost()), 이것은 이 서블릿 파일이 처리하는 부분이다.
    //이 서블릿을 호출할 때 클라이언트에서 요청이 들어올 때, get방식인지 post방식인지에 따라 호출이 달라진다.
    //보통 doGet()메서드는 form을 그냥 출력하는 형태로 많이 쓰이고, doPost()메서드는 데이터 가공이나 처리코드를 실행할 때 많이 사용된다.
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		System.out.println("Hello World");
		System.out.println("doGet()");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		System.out.println("Hello World");
		System.out.println("doPost()");
	}
	//결론
	//1. jsp파일 : HTML파일 내에 jsp코드를 넣는 것
	//2. servlet파일 : 자바파일이다. 반드시 맵핑을 해서 사용해야 한다.

}
