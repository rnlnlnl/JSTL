<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/el/paramPro.jsp</h1>
	<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
	%>
	전달정보 : <%=name %><br>
	아이디 : <%=request.getParameter("id")%><br>
	스포츠 : <%=request.getParameter("s1")%><br>
	스포츠 : <%=request.getParameter("s1")%><br>
	<%
		String[] s1 =	request.getParameterValues("s1");
	%>
	스포츠 : <%=s1[0]%><br>
	스포츠 : <%=s1[1]%><br>
	
	<%
		// 취미정보는 반복문을 사용해서 출력
		String[] hobby = request.getParameterValues("hobby");
		if(hobby != null){
			for(int i=0;i<hobby.length;i++){
	%>
				취미 : <%=hobby[i]%><br>
	<%
			}
		}
	%>
	
	
	
	
	<hr>
	<h2> EL 표현식을 사용한 처리</h2>
	이름 : ${param.name}<br>
	아이디 : ${param.id}<br>
	스포츠 :${paramValues.s1[0]}<br>
	스포츠 :${paramValues.s1[1]}<br>
	<%-- 취미 : ${param.hobby}<br> --%>
	<!-- 취미 정보는 반복문을 사용 해서 출력 -->
	<!-- el 표현식은 for반복문 사용 X -->
<%--<%
		for(int i=0;i<hobby.length;i++){
	%>		
		취미(el) : ${paramValues.hobby[i]}<br>
	<%		
		}
		
	%> --%>
	취미(el) : ${paramValues.hobby[0]}<br>
	취미(el) : ${paramValues.hobby[1]}<br>
	취미(el) : ${paramValues.hobby[2]}<br>
	<hr>
	<h2> el 표현식은 JSTL-foreach를 사용해서 반복</h2>
	
	<c:forEach var="h" items="${paramValues.hobby}">
		취미 : ${h}<br>
	</c:forEach>
	
	<hr>
	<!-- EL표현식으로 전달되는 파라미터 상태는 
		자동으로 형변환이 된다.
	 -->
	나이 : ${param.age}
	나이+10 : ${param.age+10}
	
	<%
		Integer.parseInt(request.getParameter("age"));
	%>
	
	
	
	
	
	
	
	
</body>
</html>