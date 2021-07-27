<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WeContent/core/foreach.jsp</h1>
	
	<%
		for(int i=0;i<10;i++){
	%>
	<h2>Hello!</h2>
	<%
		}
	%>
	
	<hr>
		JSTL - foreach구문<br>
	
	<c:forEach begin="1" end="5" step="1" >
		<h2>ITWILL !</h2>
	</c:forEach>
	
	<hr>
	1~10 까지 수 중에서 홀수만 출력(foreach)<br>
	<!-- foreach문에서 반복에 사용되는 값은 var 변수를 사용해서 저장가능
		값을 사용할떄는 EL표현식으로 나타내줘야한다(html)
	 -->
	<c:forEach begin="1" end="10" step="2" var="i">
		${i}<br>
	</c:forEach>
	
	<hr>
	
	<%
		ArrayList arr = new ArrayList();
		arr.add(1);
		arr.add(2);
		arr.add(3);
		arr.add(4);
		arr.add(5);
		
		for(int i=0;i<arr.size();i++ ){
			out.println(arr.get(i)+"<br>");
		}
	%>
	
	<hr>
	<%
		//자바 foreach
		for(Object a:arr){
			System.out.println(a);
		}
	
		// 영역객채에 저장
		pageContext.setAttribute("arr", arr);
	%>
	<hr><hr>
	el 표현식 ${arr}
	<hr>
	<c:forEach var="a" items="${arr}">
		${a}<br>
	</c:forEach>
	
	<hr><hr>
	<!-- set으로 변수를 지정하면 자동으로 Attribute를 만드는 것과 같다 -->
	<c:set var="arr2" value="a,b,c,d,e,f" scope="page"/>
	
	<c:forTokens var="test" items="${arr2}" delims=",">
		${test}<br>
	</c:forTokens>
	<hr>
	
	<!-- 
		["Itwill Busan 교육 센터 5 강의장 홍 길 동"]
		=> 문자열 파싱 (공백)후 출력
	 -->
	<c:set var="str" value="Itwill Busan 교육 센터 5 강의장 홍 길 동"></c:set>
	
	<c:forTokens var="b" items="${str}" delims=" ">
		${b}<br>
	</c:forTokens>
	
	
	
	
	
	
	
</body>
</html>