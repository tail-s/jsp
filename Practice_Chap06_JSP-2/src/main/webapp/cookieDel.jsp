<%@page import="jakarta.servlet.http.Cookie"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 삭제</title>
</head>
<body>
	<h1>쿠키 속성을 삭제하는 cookieDel.jsp페이지 입니다.</h1>
	<%
		System.out.println("서버에서 쿠키를 삭제하였습니다.");
		//요청들어오는 쿠키들의 값들을 받고 있다.
		Cookie[] cookies = request.getCookies();
		
		for(int i=0; i<cookies.length; i++) {
			String name = cookies[i].getName();		//쿠키의 이름을 얻는다
			String value = cookies[i].getValue();	//쿠키의 값을 얻는다.
			//만약에, 이름이 abcde가 맞다면.... 출력해라.
			if(name.equals("idabc")) {
				out.println("cookies[" + i + "] name : " + name);				
				out.println("<br>");
				out.println("cookies[" + i + "] value : " + value);
				cookies[i].setMaxAge(0);	//유효기간을 0초로 설정하면 삭제를 하는 효과와 동일하다.
				
				//위의 코드에서 쿠키의 수정이 있었으므로 다시 response객체에 쿠키를 추가한다.
				response.addCookie(cookies[i]);
			}
		}
	%>
	
	<br><br>
	<a href="cookieTest.jsp">쿠키 확인 페이지로 이동</a>

</body>
</html>