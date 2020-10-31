<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>회원 가입 양식</h2>
   <hr>
         
   <form action="req_user_info.jsp"> 
      
      # 아이디: <input type="text" name="id"> <br>
      # 비밀번호: <input type="password" name="pw"> <br>
      
      성별: <br>
      <input type="radio" name="gender" value="남자">남&nbsp;&nbsp;&nbsp;
      <input type="radio" name="gender" value="여자">여 <br>
      
      # 취미: <br>
      <input type="checkbox" name="hobby" value="독서"> 독서 &nbsp;
      <input type="checkbox" name="hobby" value="축구"> 축구 &nbsp;
      <input type="checkbox" name="hobby" value="게임"> 게임 &nbsp;
      <input type="checkbox" name="hobby" value="수면"> 수면 <br>
      
      # 지역: 
      <select name="region"> 
         <option>서울</option>
         <option>대전</option>
         <option>대구</option>
         <option>부산</option>
      </select> <br>
      
      # 자기소개 <br>
         <textarea name="introduce" cols="40" rows= "10"></textarea> <br>
      
      <input type="submit" value="회원가입">
      
      
   </form>
</body>
</html>