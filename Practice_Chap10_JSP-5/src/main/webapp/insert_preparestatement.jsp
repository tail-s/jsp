<%@ page import="java.sql.Statement"%>
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
		//쿼리문을 실행할 PreparedStatement객체 선언
		PreparedStatement pstmt = null;
		
		try {
			//쿼리문을 작성
			String sql = "insert into members values(?,?,?)";			
			//connection객체로부터 PreparedStatement객체를 얻어내는 코드
			//매개변수 값으로 sql문을 주어야 한다.
			pstmt = connection.prepareStatement(sql);
			//PrepareStatement 객체를 이용하여 각각 ?에 해당하는 값들을 지정해주면 된다.
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, username);
			
			//쿼리문을 DB에 날리는 코드. 쿼리문을 매개변수로 넣지 않도록 한다. 이미 위에서 쿼리문으로 prepareStatement객체가 생성되었다.
			pstmt.executeUpdate();
			out.println("members테이블에 정상적으로 삽입 성공");
		}catch(SQLException e) {
			out.println("members테이블에 삽입 실패");
			out.println("SQLException : " + e.getMessage());
			e.printStackTrace();
		}finally {
			//자원 해제를 반드시 하는 습관을 들이도록 하자.
			if(pstmt != null)
				pstmt.close();
			if(connection != null)
				connection.close();
		}
	
	%>
	<a href="select_preparestatement.jsp">회원 조회하기</a>

</body>
</html>