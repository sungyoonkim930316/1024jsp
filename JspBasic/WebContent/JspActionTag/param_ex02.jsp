<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

	<%
		request.setCharacterEncoding("utf-8");
	%>
	
	<jsp:forward page="param_ex03.jsp">
		<jsp:param name="grade" value="준회원" />
	</jsp:forward>
