<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String name = "홍길동";
    	String address = "서울특별시";
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		out.print("이름 : " + name + "<br>");
		out.print("주소 : " + address + "<br>");
	%>
	
	<hr>
	
	이름 : <%=name %> <br>
	주소 : <%=address %> <br>
	난수 : <%=Math.random() %> <br>
	
	<h2>구구단 4단</h2>
	<% for (int hang=1; hang<=9; hang++) { %>
		4 x <%=hang %> = <%=4*hang %> <br>
	<% } %>

</body>
</html>