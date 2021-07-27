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
	<h1>WebContent/el/ArrayTest.jsp</h1>
	<h3>JSP</h3>
	<%
		// 전달받은 배열을 정보를 출력
		//ArrayList foods = (ArrayList)request.getAttribute("foods");
		String[] foods = (String[])request.getAttribute("foods");
		
		for(int i =0;i<foods.length;i++){
		%>	
			<%=foods[i]%><br>
		<%	
		}
	%>
	
	<h3>EL</h3>
	<!-- EL 표현식은 배열을 사용할수없어서 일일이 다적거나 forEach문을 써야한다 -->
	${requestScope.foods}<br>
	${requestScope.foods[0]}<br>
	${requestScope.foods[1]}<br>
	${requestScope.foods[2]}<br>
	${requestScope.foods[3]}<br>
	${requestScope.foods[4]}<br>
	${requestScope.foods[5]}<br>
	
	<hr>
	
	<h3> JSTL + EL</h3>
	<c:forEach var="food" items="${requestScope.foods}">
		${food}<br>
	</c:forEach>
	
	<h3> ArrayList </h3>
	
	<%
		ArrayList arry = (ArrayList)request.getAttribute("arry");
		for(int i =0; i<arry.size(); i++){
				out.print(arry.get(i)+"<br>");
		}	
	%>
	
	
	<h3>JSTL + EL</h3>
	<c:forEach var="arry" items="${arry}">
		스포츠 : ${arry}<br>
	</c:forEach>
	
	
	
	
	
</body>
</html>