package sec_exam04;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.annotation.WebServlet;

@WebServlet("/LS")
public class ServletListener implements jakarta.servlet.ServletContextListener {
	
	//아래 2개의 콜백 메서드는 다른 웹 어플리케이션(타 프로젝트)이 실행될 때와 종료될 때에 같이 실행되기 때문에 아래와 같은 코드를 보여주기 싫다면 주석처리를 해야 한다.
	
	//톰캣서버가 시작될 때 자동 호출이 된다.
		@Override
		public void contextInitialized(ServletContextEvent sce) {
			System.out.println("contextInitialized() 호출");
		}
	
	//톰캣서버가 중지될 때 자동 호출이 된다.
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		System.out.println("contextDestroyed() 호출");
	}	

}

// 서블릿의 실행 순서 (리스너 포함)
// 1. contextInitialized() 호출
// 2. 생성자 호출
// 3. initPostConstructor() 선처리
// 4. init() 호출
// 5. doGet() 호출, doPost() 호출
// 6. contextDestroyed() 호출
// 7. destroy() 호출
// 8. destroyPredestroy() 후처리
