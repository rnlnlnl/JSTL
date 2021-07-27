<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/el/paramForm.jsp</h1>
	
	<form action="paramPro.jsp" method="post">
		나이 : <input type="text" name="age"><br>
		이름 : <input type="text" name="name"><br>
		아이디 : <input type="text" name="id"><br>
		좋아하는 스포츠 : <input type="text" name="s1"><br>
		좋아하는 스포츠 : <input type="text" name="s1"><br>
		취미 : 
		<input type="checkbox" name="hobby" value="미식축구">미식축구
		<input type="checkbox" name="hobby" value="펜싱">펜싱
		<input type="checkbox" name="hobby" value="고스톱">고스톱<br>
		
		
		
		<input type="submit" value="전송">
	</form>
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>