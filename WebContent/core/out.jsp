<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
	JSTL의 core 라이브러리를 사용하기 위해서 속성을 추가
	* 반드시 JSTL을 사용할때 선언!!!
 -->											 <!-- c = 접두사 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>html에서 사용불가</title>
</head>
<body>
	<h1>WeContent/core/out.jsp</h1>
	<!-- <t:out value="<abc>는 abc입니다.ttt"/> prefix="t" 로변경해도 사용은 가능하다.-->
	
	<!-- 화면에 데이터 출력하기 -->
	1. html코드 사용<br>
	<%
		out.println("2. out.println() 사용<br>");
	%>
	3. <%="JSP 표현식 사용"%><br>
	
	4. JSTL 사용<br>
	<c:out value="JSTL!!"></c:out>
	<%-- <c:out value=""/> --%>
	<%-- <jsp:include page=""></jsp:include> --%>
	
	
	<hr>
	<h2>JSTL + EL표현식</h2>
	<c:out value="${'HEllo~ '}"/><br>
	<c:out value="100*200"/><br>
	<c:out value="${100*200}"/><br>
	<%=100*200 %><br>
	
	jstl안에 el표현식은 null값을 빈공백으로 처리해준다.
	자동으로 예외 처리를 해준다.
	<c:out value="${member.id}"/><br>
	<c:out value="${member.id }" default="null값 입니다.@@"/>
	<%-- <%=member.id %> 500에러가 뜬다--%>
	
	<hr><hr>
	
	
	<abc>는 abc입니다. <br>
	
	&lt;abc&gt;는 abc입니다. <br>
	
	<c:out value="<abc>는 abc입니다."/> <br>
</body>
</html>