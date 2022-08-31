<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String strScore = request.getParameter("score");		
	
	//post방식으로 보낼 때 값을 session에 저장하여 다른 페이지로 이동할 때 파라메터값을 넘겨야 한다.
	pageContext.getSession().setAttribute("name", name);
	pageContext.getSession().setAttribute("score", strScore);
	
	//get방식으로 보낼 때
	//현재 페이지에서 다른 페이지로 넘기고 싶을 때 한글일 경우를 대비해 아래와 같이 인코딩을 재차 한다.
	String encodeName = URLEncoder.encode(name, "utf-8");
	//점수를 문자열에서 정수타입으로 캐스팅
	int score = Integer.parseInt(strScore);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		if(score < 0 || score > 100) {
			out.print("<h1>점수를 잘못 입력하셨습니다.</h1>");
			out.print("<a href='score.html'>점수 입력창으로 이동</a>");
			return;
		}
	%>
	
	<%
		//score 점수에 따라 페이지 이동이 달라지는 코드
		if(score >= 60) {
			System.out.println("scoreResult.jsp 페이지를 지나갔습니다.");
			//점수가 60점 이상이면 pass.jsp로 이동한다.
			//response.sendRedirect("pass.jsp?name=" + encodeName + "&score=" + strScore);(get방식)
			response.sendRedirect("pass.jsp");
		}
		else {
			System.out.println("scoreResult.jsp 페이지를 지나갔습니다.");
			//점수가 60점 미만이면 fail.jsp로 이동한다.
			//response.sendRedirect("fail.jsp?name=" + encodeName + "&score=" + strScore);(get방식)
			response.sendRedirect("fail.jsp");
		}
	%>

</body>
</html>