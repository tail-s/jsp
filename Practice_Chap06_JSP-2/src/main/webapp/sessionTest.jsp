<%@page import="java.util.Enumeration"%>
<%@page import="jakarta.servlet.http.Cookie"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 확인</title>
</head>
<body>
	<h1>세션의 속성이 삭제된 것을 확인하는 sessionTest.jsp페이지 입니다.</h1>
	<%
		Enumeration<String> en = session.getAttributeNames();
		int i = 0;
		
		while(en.hasMoreElements()) {
			i++;
			String sName = en.nextElement();
			String sValue = (String)session.getAttribute(sName);
			
			out.println("sName : " + sName + "<br>");
			out.println("sValue : " + sValue + "<br>");
		}
		if(i == 0)
			out.println("해상 세션이 삭제되었습니다. <br>");
		
		//session.invalidate(); //세션의 값이 많을 때에는 invalidate()를 사용하자.
		out.println("해당 세션 id(유니크한 값) : " + session.getId() + "<br>");
		
		
	%>
	
	<!-- 결론은 아래와 같다.
	
	차이점(중요)
	
	쿠키는 로컬PC에 저장되기 때문에 보안에 취약
	세션은 서버에 객체로 존재하기 때문에 보안에 강함. JSP를 통해서만 접근이 가능하다.
	아울러, 여러 클라이언트가 접속하므로 한 클라이언트에 하나의 세션을 생성하고 세션 아이디를 부여한다.
	세션 아이디를 통해 어느 클라이언트에서 요청이 들어오는지 서버가 구분할 수 있게 된다.
	현업에서는 세션을 많이 사용한다. -->
</body>
</html>