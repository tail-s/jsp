<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 액션태그 결과 페이지</title>
</head>
<body>
	<h2>include_param_result.jsp페이지 입니다.</h2>
	<%
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
	%>
	넘어온 이름 : <%=name %>
	넘어온 나이 : <%=age %>
	

</body>
</html>