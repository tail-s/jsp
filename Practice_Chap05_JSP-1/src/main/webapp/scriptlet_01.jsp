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
		int i = 0;
		while(true) {
			i++;
			//out은 내부객체이다.
			out.println("2 * " + i + " = " + 2 * i + "<br>" );
	%>
	==================<br>
	<%
			if(i >= 9)
				break;
		}	
	%>

</body>
</html>