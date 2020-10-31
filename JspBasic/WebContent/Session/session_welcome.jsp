<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String id = (String) session.getAttribute("user_id");
    	String nick = (String) session.getAttribute("user_nick");
    	
    	if(id == null) {
    		response.sendRedirect("session_login.jsp");
    	} else { %>

<%@ include file="../Application/app_basic.jsp" %>    	
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3><%=nick %>(<%=id %>)님 환영합니다!</h3> <br>
	<a href="session_login.jsp">로그인 페이지로</a> <br>
	<a href="logout.jsp">로그아웃 하기</a>
	
	<hr>
	<h3>방문자 수 : <%=cnt %>명</h3>

</body>
</html>

<% } %>