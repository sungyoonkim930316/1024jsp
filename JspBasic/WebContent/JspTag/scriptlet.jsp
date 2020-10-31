<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<% for (int i=1; i<=5; i++) { %>	
		<h2>이클립스 내부에서 jsp 파일 작성하기!</h2>
		<p> <!-- 문단을 구성하는 태그 -->
			안녕하세요. 오늘은 10월 24일 토요일입니다. <br>
			지금은 스크립틀릿을 연습중입니다~
		</p>
	<% } %>
	
	<hr>
	
	<h2>구구단 4단</h2>
	<% for (int hang=1; hang<=9; hang++) {
		//out.print() 메서드는 스크립틀릿 내부에서 브라우저에 바로 출력을 실행하는 메서드입니다.
		//매개값으로 텍스트나 html코드를 문자열로 전달하시고, 자바 변수는 그대로 사용하시면 됩니다.
		out.print("4 x " + hang + "=" + (4*hang) + "<br>");
	} %>

</body>
</html>