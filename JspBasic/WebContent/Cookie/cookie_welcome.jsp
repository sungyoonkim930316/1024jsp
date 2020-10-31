<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
		Cookie[] cookies = request.getCookies();
    
    	String userId = null;
    	
    	if (cookies != null) {
    		for (Cookie c : cookies) {
    			if (c.getName().equals("id_cookie")) {
    				userId = c.getValue();
    			}
    		}
    	}
    %>
    
    
<%@ include file="../Application/app_basic.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<% if (userId != null) { %>	
		<p>
			<%=userId %>님 환영합니다. <br>
			<a href="cookie_login.jsp">로그인 화면으로 돌아가기</a>
			<hr>
			<h3>방문자 수 : <%=cnt %>명</h3>
		</p>
	<% } else { %>
		<p>
			시간이 지나서 자동 로그아웃 처리 됐습니다. <br>
			<a href="cookie_login.jsp">다시 로그인하기</a>
		</p>
	<% } %>
	
</body>
</html>