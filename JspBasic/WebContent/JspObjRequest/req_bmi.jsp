<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%--
       bmi 지수 계산 공식 = [체중(kg) / 신장(m) * 신장(m)]
       * bmi지수가 23을 초과한다면 "당신은 과체중입니다."
       18.5 미만이라면 "당신은 저체중입니다."
              그 외에는 "당신은 정상체중입니다." 를 출력하세요.
       
              파라미터변수명 -> 신장=cm, 체중=kg
       
       * 문자열 내부에 들어있는 데이터를 기본 데이터 타입으로 변환하는 방법.
              포장(Wrapper) 클래스에 들어있는 parse + 기본타입이름() 메서드 활용.
       Integer.parseInt(문자열), Double.parseDouble(문자열)
       
       request.getParameter() 리턴타입이 String이기 때문에
       bmi지수를 계산하려면 실수나 정수로 변환해 주셔야 합니다.
              신장과 체중 둘 다 소수점으로 받는다고 가정하겠습니다.
     --%>
     
     <%
     	String strCm = request.getParameter("cm");
     	String strKg = request.getParameter("kg");
     	
     	double bmi = Double.parseDouble(strKg) / (Double.parseDouble(strCm)/100 * Double.parseDouble(strCm)/100);
     	bmi = Math.round(bmi*100) / 100.0;
     	String result;
     	
     	if (bmi > 23) {
     		result = "당신은 과체중입니다.";
     	} else if (bmi < 18.5) {
     		result = "당신은 저체중입니다.";
     	} else {
     		result = "당신은 정상체중입니다.";
     	}
     	
     %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>체질량 지수(bmi) 계산</h1>
	
	<hr>
	
	<p>
	- 신장 : <%=strCm %>cm <br>
	- 체중 : <%=strKg %>kg 
	</p>
	
	<p>
	BMI 지수 : <strong><%=bmi %></strong><br>
	<%=result %>
	</p>
	

</body>
</html>