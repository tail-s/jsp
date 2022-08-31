<!-- language 속성 : 스크립트 요소에서 사용할 언어 설정, jsp를 지원하는 언어는 자바밖에 없다.
extends 속성 : 상속받을 클래스를 설정
import 속성 : import할 패키지. 클래스를 설정
session 속성 : HttpSession 사용여부를 설정
buffer 속성 : jsp페이지에서 출력 버퍼 크기를 설정
autoFlush 속성 : buffer가 꽉 찼을 경우의 처리방법 설정
isThreadSafe 속성 : 다중 스레드에 동시 실행 여부를 설정
info 속성 : 페이지 설명
contentType 속성 : jsp페이지가 생성할 문서의 타입을 지정
isErrorPage 속성 : 현재 페이지를 에러페이지로 지정할 것인지에 대한 설정
pageEncoding 속성 : 현재 페이지의 문자의 인코딩타입 설정 -->

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>import 속성</title>
</head>
<body>
	<%!
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm");
		Date date = new Date();
	%>
	
	<h1><%=date %></h1><br>
	<h1><%=sdf.format(date) %></h1>

</body>
</html>