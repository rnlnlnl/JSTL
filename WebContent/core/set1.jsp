<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WeContent/core/set1.jsp</h1>
	<%
		// jsp 페이지에서 java 코드를 사용
		// => 단점-set1.jsp 페이지에서만 사용 가능(지역변수)
		int num1 = 10;
		int num2 = 20;
		int sum = num1 + num2;
	%>
	변수의 합 : <%=sum%><br>
	
	<h2> JSTL 사용 - 변수 선언</h2>
	<%-- <c:set var="변수명" value="변수값"/> --%>
	<c:set var="num1" value="100"/>
	<c:set var="num2" value="200"/>
	<%-- <c:set var="sum" value="num1+num2" /> --%>
	<c:set var="sum" value="${num1+num2}" />
	el표현식은 에러가 떠도 일단 실행을 시킨다 버그가 많아서 그런다<br>
	
	<c:out value="sum"/><br>
	jstl변수는 el표현식으로 호출<br>
	<c:out value="${sum}"/><br>
	<hr>
	
	데이터를 화면에 바로 출력(html)<br>
	<%=num1 %> + <%=num2 %> = <%=sum %><br>
	${num1}+${num2} = ${sum}<br>
	
	<hr>
	<!-- 
		JSTL을 사용한 변수의 선언은 JSP 영역 객체를 활용 가능
		
		page < request < session < application
	 -->
	
	* scope 설정이 없는 경우 기본값으로 page영역<br>
	<c:set var="data" value="1000" />
	<%-- <c:set var="data" value="1000" scope="page" /> 기본값은 page이다--%>
	
	<h3> set2.jsp 페이지 정보 전달 </h3>
	<%
		//request.setAttribute("name", "휴대폰" );
	%>
	<c:set value="휴대폰" var="name" scope="request"/>
	<c:set value="100" var="price" scope="request"/>
	<c:set value="아이폰" var="model" scope="request"/>
	
	<!-- 페이지 이동 set2.jsp페이지 -->
	<!-- 포워딩(forward)방식으로만 이동가능 request이기때문에 -->
	<!-- 페이지 주소는 변경X, 화면만 변경 O -->
	
	<jsp:forward page="set2.jsp" />
	
	
	
</body>
</html>