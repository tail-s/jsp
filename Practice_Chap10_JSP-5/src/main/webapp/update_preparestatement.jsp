<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB데이터 수정</title>
</head>
<body>
	<%@ include file="dbconn.jsp"%>>	<!-- 접속할 DB코드를 액션태그로 가져옴 -->
	<%
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String username = request.getParameter("username");
		//쿼리문을 실행할 Statement객체 선언
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			String sql = "select id, pw from members where id = ?";
			
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();			
				
			if(rs.next()) {
				String rId = rs.getString("id");
				String rPw = rs.getString("pw");
				if(id.equals(rId) && pw.equals(rPw)) {
					sql = "update members set username = ? where id = ?";					
					//먼저 사용된 PreparedStatement객체를 닫아준다.
					if(pstmt != null)
						pstmt.close();
					
					//Statement객체는 쿼리를 단 한번 실행한다. 재사용을 하기 위해서는 반드시 또 Connection객체로부터 Statement객체를 얻어야 한다. 그래서 상당히 쿼리문이나 사용법에 있어 상당히 불편하다.
					pstmt = connection.prepareStatement(sql);
					pstmt.setString(1, username);
					pstmt.setString(2, id);
					
					pstmt.executeUpdate();					
					
					out.println(rId + "님의 정보가 수정되었습니다.");					
				}
				else {
					out.println("아이디나 비밀번호를 확인하세요.");
				}				
			}
			else {
				out.println("members테이블에 일치하는 아이디가 없습니다.");
			}
		}catch(SQLException e) {
			out.println("members테이블 수정 실패");
			out.println("SQLException : " + e.getMessage());
			e.printStackTrace();
		}finally {
			if(rs != null)
				rs.close();
			if(pstmt != null)
				pstmt.close();
			if(connection != null)
				connection.close();
		}
	%>
	<br>
	<a href="select_preparestatement.jsp">회원리스트 보기</a> &nbsp;&nbsp;&nbsp;
	<a href="insert_form_preparestatement.jsp">회원가입</a> &nbsp;&nbsp;&nbsp;
		
</body>
</html>