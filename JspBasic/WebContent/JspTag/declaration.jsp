<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%!
    	//Declaration (접근제한자 붙힐 수 있음 public 같은거, 메서드 선언도 가능)
    	//Declaration (선언자)
    	//선언자는 jsp파일 내부에서 사용할 멤버변수나 메서드 등을 선언할 때 사용하는 태그입니다. 해당 class로 객체가 생성될 때 멤버변수와
    	//매서드로써 동작하기 때문에 객체가 소멸하지 않는 이상, 요청이 들어온다면 값을 계속해서 누적할 수 있고, 메서드의 호출 또한 가능합니다.
    	public int i;
    
    	public int add(int n1, int n2) {
    		return n1 + n2;
    	}
    	
    	//Math.random();
    %>
    
    <%
    	//Scriptlet
    	//지역변수 및 내부의 코드를 작성하는 태그입니다. 스크립틀릿에 작성한 내용은 jsp파일이 class로 변환될 때 jsp_service()라는 메서드 내부로 들어갑니다.
    	//페이지 요청이 발생할 때마다 실행할 로직을 작성할 수 있습니다.
    	int j = 0;
    
    	/* public void hello() {
    		System.out.println("안녕하세요~");
    	} */
    	
    	i++;
    	j++;
    	double d = Math.random();
    	int result = add(4, 7);
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