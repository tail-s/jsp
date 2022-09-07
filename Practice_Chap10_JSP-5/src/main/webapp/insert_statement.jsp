<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 입력값 DB저장하기</title>
</head>
<body>
	<%@ include file="dbconn.jsp"%>>	<!-- 접속할 DB코드를 액션태그로 가져옴 -->
	<%
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String username = request.getParameter("username");
		//쿼리문을 실행할 Statement객체 선언
		Statement stmt = null;
		
		try {
			//쿼리문을 작성
			String sql = "insert into members(id, pw, username) values('" + id + "', '" + pw + "', '" + username + "')";
			//connection객체로부터 Statement객체를 얻어내는 코드
			stmt = connection.createStatement();
			//쿼리문을 DB에 날리는 코드
			stmt.executeUpdate(sql);
			out.println("members테이블에 정상적으로 삽입 성공");
		}catch(SQLException e) {
			out.println("members테이블에 삽입 실패");
			out.println("SQLException : " + e.getMessage());
			e.printStackTrace();
		}finally {
			//자원 해제를 반드시 하는 습관을 들이도록 하자.
			if(stmt != null)
				stmt.close();
			if(connection != null)
				connection.close();
		}
	
	%>
	<a href="select_statement.jsp">회원 조회하기</a>

</body>
</html>