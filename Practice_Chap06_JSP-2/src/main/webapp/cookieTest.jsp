<%@page import="jakarta.servlet.http.Cookie"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 확인</title>
</head>
<body>
	<h1>쿠키 속성이 삭제된 것을 확인하는 cookieTest.jsp페이지 입니다.</h1>
	<%
		System.out.println("삭제된 쿠키의 값을 출력해봅니다.");
		//유효시간이 0으로 설정된 쿠키가 리턴될 것이다.
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null) {
			for(int i=0; i<cookies.length; i++) {
				out.println("현재 남아있는 쿠키 이름 : " + cookies[i].getName());
				out.println("현재 남아있는 쿠키 값 : " + cookies[i].getValue());
			}
		}
		//확인해보니 현재 남아있는 쿠키 이름 : JSESSIONID --> 서버에서 생성
		//현재 남아있는 쿠키  값 : 90909F3F2F680BEE1FD34CFED7757538 --> 서버에서 생성
		//위의 이름과 값은 그냥 무시하면 된다. 위의 부분은 항상 출력된다.
		
		//여기서 반드시 기억해야 할 것은, 쿠키르 생성하고 response객체에 탑재를 해주어야 한다.
		//아울러 변경이 일어나면 반드시 response 객체에 재탑재를 해주어야 한다 그래야 쿠키값이 일관성 있게 유지된다.
		
		
	%>
</body>
</html>