<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	/*
    	- 세션에 저장된 데이터는 브라우저 창이 종료될 때까지 혹은 세션의 유효시간이 만료되기 전까지 웹 어플리케이션 내의 모든 jsp 페이지에서 사용이 가능하다.
    	- 세션에 저장된 데이터를 가져오려면 session객체의 getAttribute()메서드를 사용하며 매개값으로 가져올 데이터의 세션 이름을 적습니다.
    	*/

    	String nick = (String) session.getAttribute("nickname");
    	String[] hobbys = (String[]) session.getAttribute("hobbys");
    	
    	out.print(nick + "<br>");
    	out.print(Arrays.toString(hobbys) + "<br>");
    	out.print("--------------------------------<br>");
    	
    	// 세션의 유효시간 설정
    	session.setMaxInactiveInterval(60 * 60); // 1시간 설정 (디폴트는 30분)
    	out.print("세션의 유효시간 : " + session.getMaxInactiveInterval() + "초<br>");
    	out.print("--------------------------------<br>");
    	
    	// 특정 세션의 데이터를 삭제.
    	session.removeAttribute("nickname");
    	nick = (String) session.getAttribute("nickname");
    	out.print("삭제 후 nick의 값 : " + nick + "<br>");
    	out.print("--------------------------------<br>");
    	
    	// 모든 세션 데이터 삭제
    	session.invalidate();
    	
    	// 세션을 무효화 시킨 후에는 해당 페이지에서 더 이상 세션 데이터를 사용할 수 없습니다.
    	// 새로운 요청이 들어와서 내장객체 session이 다시 생성되게 해야 합니다.
    	hobbys = (String[]) session.getAttribute("hobbys"); // 에러가 발생
    	out.print("삭제 후 hobbys의 값 : " + Arrays.toString(hobbys));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>