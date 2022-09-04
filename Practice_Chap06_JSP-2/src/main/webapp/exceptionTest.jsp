<%@ page errorPage="exceptionPage.jsp" %>	<!-- 현재 이 페이지에서 예외가 발생하면 페이지 지시자에 있는 속성 중 errorPage로 설정한 페이지로 이동하라는 지시자의 내용 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예외 테스트</title>
</head>
<body>
	<%
		//모든 수는 0으로 나눌 수 없기에 Arithmetic예외가 발생한다
		int i = 100 / 0;
	
		//여기서는 NumberFormat예외가 발생한다.
		int value = Integer.parseInt("10aaaa");
	%>
</body>
</html>