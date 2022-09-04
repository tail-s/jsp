<%@page import="jakarta.servlet.http.Cookie"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%!
		String id, pw;
	%>
	<%
		request.setCharacterEncoding("utf-8");
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		
		//지금은 DB를 설정하지 않아서 아래와 같이 코드를 작성하였지만, 추후 DB연동하고 난 뒤에는 아래와 같이 하는 코드를 쉽게 변경할 수 있다.
		if(id.equals("김소진") && pw.equals("12345")) {
			//세션으로 로그인 정보를 저장하고 있다.
			session.setAttribute("id", id);
			System.out.println("session_loginOk.jsp 파일 거쳐감");
			//아이디와 비밀번호가 맞다면...			
			response.sendRedirect("session_login_success.jsp");
		}
		else {
			//로그인에 실패하면 session_login_fail.jsp로 이동시키고 있다.
			response.sendRedirect("session_login_fail.jsp");
		}
	%>

</body>
</html>