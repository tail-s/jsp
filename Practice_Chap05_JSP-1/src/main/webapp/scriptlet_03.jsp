<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트릿</title>
</head>
<body>
	<%
		Calendar calendar = Calendar.getInstance();
		int hour = calendar.get(Calendar.HOUR_OF_DAY);
		int minute = calendar.get(Calendar.MINUTE);
		int second = calendar.get(Calendar.SECOND);
	%>
	<h1>현재 시각 : <%= hour %>시 <%= minute %>분 <%= second %>초 입니다. </h1>
	<% if(hour >= 12) {	%>
	<h2>오후 입니다.</h2>
	<% } else { %>
	<h2>오전 입니다.</h2>
	<% } %>

</body>
</html>