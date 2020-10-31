<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%--
    	* 요청 파라미터 (request parameter)
    	
    	- 클라이언트 측에서 서버로 데이터를 요청할 때 전달되는 값들을
    	담은 변수를 파라미터라고 합니다
    	
    	- 요청 파라미터는 URL 주소 뒤에 ?룰 붙인 이후 [파라미터 변수명 = 값]의
    	형식을 통해 서버에 데이터를 전송합니다.
    	
    	- 요청 파라미터를 여라 개 전송할 때는 & 기호를 사용하여 나열하여 전달합니다.
    --%>
    
    <%
    	//클라이언트에서 전송된 요청 파라미터의 값을 읽는 방법.
    	//내장객체 request의 메서드 getParameter("파라미터 변수명");
    	
    	String name = request.getParameter("name");
    	String nick = request.getParameter("nick");
    	String address = request.getParameter("address");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	# 이름 : <%=name %> <br>
	# 별명 : <%=nick %> <br>
	# 주소 : <%=address %>

</body>
</html>