<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String strAge = request.getParameter("age");
    
    	int age = Integer.parseInt(strAge);
    	
    	if (age >= 20) {
    		//페이지를 강제 이동하려면 response객체의 sendRedirect()를 사용합니다.
    		//메서드의 매개값으로 이동시킬 페이지의 URL을 작성합니다.
    		response.sendRedirect("res_basic_ok.jsp");
    	} else {
    		response.sendRedirect("res_basic_no.jsp");
    	}
    %>
    