<%@page import="jakarta.servlet.http.Cookie"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<script type="text/javascript">
		alert('로그인 성공');
	</script>
	<%
		Cookie[] cookies = request.getCookies();
		for(int i=0; i<cookies.length; i++) {
			String id = cookies[i].getValue();	//실제 아이디 값을얻는 코드이다.
			if(id.equals("abcde")) {
				out.println(id + "님 반갑습니다.");
			}
		}
	%>
	<h1>환영합니다.</h1>
	
	<a href="logout.jsp">로그아웃</a>
</body>
</html>