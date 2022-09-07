<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB데이터 삭제</title>
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
		ResultSet rs = null;
		
		try{
			String sql = "select id, pw from members where id = '" + id + "'";
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sql);
			//ResultSet객체가 닫히는 경우 : ResultSet의 결과물을 가지고 온 Statement 객체가 닫힐 경우에 ResultSet객체도 함께 닫힌다.
			/* if(stmt != null)
				stmt.close(); */
			if(rs.next()) {
				String rId = rs.getString("id");
				String rPw = rs.getString("pw");
				//id와 pw가 일치하는지 확인한 후에 삭제를 진행.
				if(id.equals(rId) && pw.equals(rPw)) {
					sql = "delete from members where id = '"+ id +"' and pw = '"+ pw + "'";
					
					if(stmt != null)
						stmt.close();
					
					//Statement객체는 쿼리를 단 한번 실행한다. 재사용을 하기 위해서는 반드시 또 Connection객체로부터 Statement객체를 얻어야 한다. 그래서 상당히 쿼리문이나 사용법에 있어 상당히 불편하다.
					stmt = connection.createStatement();
					stmt.executeUpdate(sql);
					out.println(rId + "님의 정보가 삭제되었습니다.");					
				}
				else {
					out.println("아이디나 비밀번호를 확인하세요.");
				}				
			}
			else {
				out.println("members테이블에 일치하는 아이디가 없습니다.");
			}
		}catch(SQLException e) {
			out.println("members테이블 삭제 실패");
			out.println("SQLException : " + e.getMessage());
			e.printStackTrace();
		}finally {
			if(rs != null)
				rs.close();
			if(stmt != null)
				stmt.close();
			if(connection != null)
				connection.close();
		}
	%>
	<br>
	<a href="select_statement.jsp">회원리스트 보기</a> &nbsp;&nbsp;&nbsp;
	<a href="update_form_statement.jsp">회원정보 수정하기</a> &nbsp;&nbsp;&nbsp;
	<a href="insert_form_statement.jsp">회원가입</a> &nbsp;&nbsp;&nbsp;
		
</body>
</html>