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
	<h1>WeContent/core/if.jsp</h1>
	
	<c:set var="i" value="test"/>
	
	<c:if test="${i eq 'test'}">
		<h2>동일한 값!</h2>
	</c:if>
	
	
	<hr>
	
	<!-- 변수 2개를 사용해서 둘중에 더큰값을 출력하는 코드 -->
	<c:set var="n1" value="-1" />
	<c:set var="n2" value="200" />
	
	<c:if test="${n1 > n2}">
		<h2>${n1}데이터가 더크다</h2>
	</c:if>
	
	<c:if test="${n1 < n2}">
		<h2>${n2}데이터가 더크다</h2>
	</c:if>
	
	<c:if test="${n1 lt n2}">
		<h2>${n2}데이터가 더크다</h2>
	</c:if>
	
	<hr>
	
	<h2> switch-case 문과 유사한 구문</h2>
	<!-- n1 값이 50보다 큰지 100보다 큰지  판단/그외 범위 -->
	<c:choose>
		<c:when test="${n1 gt 50}">
			<h3>50보다 큰 값이다!</h3>
		</c:when>
		<c:when test="${n1 gt 100}">
			<h3>100보다 큰 값이다!</h3>
		</c:when>
		<c:otherwise>
			<h3>그외 나머지 데이터</h3>
			<c:if test="${n1 <0}">
				<h3>음수 !!</h3>
			</c:if>
		</c:otherwise>
	</c:choose>
	
	
	
	
</body>
</html>