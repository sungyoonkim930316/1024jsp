<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	request.setCharacterEncoding("UTF-8");
    	
    	String id = request.getParameter("id");
	    String pw = request.getParameter("pw");
	    String name = request.getParameter("name");
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<p>
		# 아이디 : <%=id %> <br>
		# 비밀번호 : <%=pw %> <br>
		# 이름 : <%=name %> 
	</p>

</body>
</html>