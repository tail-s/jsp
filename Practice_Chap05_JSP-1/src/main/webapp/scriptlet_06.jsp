<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언문, 표현식</title>
</head>
<body>
	<!-- 아래 선언부는 전역의 성질을 가지고 있다. -->
	<%! 
		int i = 10;
		String str = new String("abcde");
		
		public int add(int x, int y) {
			return x + y;
		}
	%>
	
	i값 : <% out.println(i + "<br>"); %>
	str값 : <% out.println(str + "<br>"); %>
	add(100, 500)값 : <% out.println(add(100, 500) + "<br>"); %>
	

</body>
</html>