<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<p>
		# 요청 URL : <%=request.getRequestURL() %> <br>
		# 요청 프로토콜 : <%=request.getProtocol() %> <br>
		# 요청 컨텍스트 루트 : <%=request.getContextPath() %> <br>
		# 서버 포트번호 : <%=request.getServerPort() %> <br>
		# 요청 ip주소 : <%=request.getRemoteAddr() %>
	</p>

</body>
</html>