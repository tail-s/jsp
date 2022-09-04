<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!-- Customer클래스를 사용하겠다 라고 useBean태그를 사용하였다. -->
<jsp:useBean id="customer" class="sec02_exam.Customer" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="customer"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 결과</title>
</head>
<body>
	<h2>회원 정보 출력</h2>
	<strong>아이디 : </strong><%=customer.getId() %><br>
	<b>비밀번호 : </b><%=customer.getPw() %><br>
	<b>이름 : </b><%=customer.getName() %><br>
	<b>생년월일 : </b><%=customer.getBirthday() %><br>
	<b>주소 : </b><%=customer.getAddr() %><br>
	<b>이메일 : </b><%=customer.getEmail() %><br>
</body>
</html>