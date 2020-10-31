<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	Cookie[] cookies = request.getCookies();
    	boolean flag = false;
    	
    	if (cookies != null) {
    		for (Cookie c : cookies) {
    			String cookieName = c.getName(); // 쿠키의 이름을 얻어오는 메서드
    			if (cookieName.equals("id_cookie")) {
    				out.print("<h3>아이디 쿠키가 존재합니다.</h3>");
    				String value = c.getValue();
    				out.print("쿠키의 값 : " + value);
    				flag = true;
    				break;
    			}
    		} if (!flag) {
    			out.print("<h3>아이디 쿠키가 사라졌어요 </h3>");
    		}
    	}
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="cookie_check_all.jsp">모든 쿠키 확인하기</a>
</body>
</html>