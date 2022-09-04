<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라메터 확인</title>
</head>
<body>
	<h1>forward_param_result.jsp페이지 입니다.</h1>
	<%!
		String id, pw;
	%>
	<%
		id = request.getParameter("id");
		pw = request.getParameter("pw");
	%>
	
	id값 : <%=id %><br>
	pw값 : <%=pw %><br>

</body>
</html>