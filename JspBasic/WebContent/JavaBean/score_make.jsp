<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    	<%--
    		액션 태그를 사용하여 ScoreBean의 객체를 request범위로 생성하세요.
    		setProperty를 사용하여 객체 내부 데이터에 파라미터 데이터를 셋팅한 뒤
    		파라미터 데이터 3개와 총점, 평균을 구하여 5개의 데이터를 모두 객체에 담아서
    		score_use.jsp로 전송(forward)하세요.
    		
    		총점과 평균은 변수를 선언하셔서 각각 총점과 평균을 구한 뒤
    		setProperty를 사용해서 추가해주시면 됩니다.
    	--%>
    	
    	<%
    		request.setCharacterEncoding("utf-8");
    	
    		/* int kor = request.getParameter("kor");
    		int eng = request.getParameter("eng");
    		int math = request.getParameter("math");
    		
    		ScoreBean score = new ScoreBean(kor, eng, math);
    		request.setAttribute("score", score); */
    	
    		/* int total = 0;
    		double average = 0;
    		
    		total = (Integer) kor + (Integer) eng + (Integer) math;
    		average = (Integer) total/3; */
    	%>
    	
    	<jsp:useBean id="score" class="kr.co.jsp.score.ScoreBean" scope="request" />
    	
    	<%-- <jsp:setProperty name="score" property="kor" value="<%=kor %>" />
    	<jsp:setProperty name="score" property="kor" value="<%=eng %>" />
    	<jsp:setProperty name="score" property="kor" value="<%=math %>" /> --%>
    	
    	<jsp:forward page="score_use.jsp" />