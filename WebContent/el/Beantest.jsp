<%@page import="com.itwillds.bean.Phone"%>
<%@page import="com.itwillds.bean.Person"%>
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
	<h1>WebContent/el/Beantest.jsp</h1>
	
	<h2> 전달받은 객체 정보를 출력 </h2>
	
	<!-- jsp코드로 전달 -->
	<%
		Person person = (Person)request.getAttribute("person");
	%>
	이름 : <%=person.getName()%><br>
	나이 : <%=person.getAge()%><br>
	휴대폰 : <%=person.getPhone()%><br>
	휴대폰 모델명 : <%=person.getPhone().getModel()%><br>
	휴대폰 전화번호 : <%=person.getPhone().getTelNum()%><br>
	<%
		Phone phone = person.getPhone();
	%>
	<%=phone.getModel()%>
	<%=phone.getTelNum()%>
	
	<hr>
	<!-- EL표현식 사용 -->
	<h3>EL</h3>
	${person}<br>
	이름 : ${person.name}<br>
	나이 : ${person.age}<br>
	휴대폰 : ${person.phone}<br>
	휴대폰모델 : ${person.phone.model}<br>
	휴대폰번호 : ${person.phone.telNum}<br>
	<!-- get메서드를 호출해서 사용하는 중이다 -->
	
	
</body>
</html>