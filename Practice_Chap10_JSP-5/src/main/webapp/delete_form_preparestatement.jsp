<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete실습 - preparestatement 객체 사용</title>
</head>
<body>
	<h2>사용자 입력값 DB삭제</h2>
	<form action="delete_preparestatement.jsp" method="post">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="pw"></p>
		<p>이름 : <input type="text" name="username"></p>
		<p><input type="submit" value="전송"></p>
	</form>
</body>
</html>