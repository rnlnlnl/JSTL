<%@page import="com.itwillds.bean.MemberBean"%>
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
	<h1>WeContent/core/set2.jsp</h1>
	
	<h2> set1.jsp 페이지에서 전달된 정보 출력</h2>
	
	<%
		request.setCharacterEncoding("UTF-8");
		String name = (String)request.getAttribute("name");
		String price = (String)request.getAttribute("price");
		String model = (String)request.getAttribute("model");
	%>
	<%=name%><br>
	<%=price%><br>
	<%=model%><br> 
	<hr>
	<h2>el 표현식 사용</h2>
	name : ${requestScope.name}<br>
	<!-- requestScope가 생략 되어있다 -->
	name : ${name}<br>
	price : ${price}<br>
	model : ${model}<br>
	<!-- 이름만 적으면 P<R<S<A 순서로 뒤져서 값을가지고온다 -->
	
	<hr>
	<c:out value="${name}"/>
	<c:out value="${price}"/>
	<c:out value="${model}"/>
	
	<hr>
	<c:out value="<c:remove/>사용하여 출력"/><br>
	 name 정보를 삭제후 다시 출력<br>
	 <%
	 	//request.removeAttribute(name);
	 %>
	<c:remove var="name"/> <!-- 권장 (X) -->
	<c:remove var="name" scope="request"/> <!-- 권장 (O) -->
	
	name : ${name}<br>
	price : ${price}<br>
	model : ${model}<br>
	
	<hr><hr>
	
	<h2> 서블릿을 사용하여 정보 전달  </h2>
	<!-- requestScope생략가능 -->
	<h4>아이디 : ${requestScope.mbean.id }</h4>
	<h4>비밀번호 : 
		<%
			MemberBean mbean = (MemberBean)request.getAttribute("mbean");
		%>
		<%=mbean.getPw()%>
	</h4>
	<h4>이름 : ${mbean.name }</h4>
	<c:set var="m" value="${requestScope.mbean }" />
	<h4>나이 : ${m.age }</h4>
	
	<hr>
	<!-- "itwill/1q2w3e/ 김학생/20 학생의 정보를 생성후
		set2.jsp 페이지에서 정보 출력
	 -->
	<h4>아이디 : ${requestScope.MemberBean.id }</h4>
	<h4>비밀번호 : ${MemberBean.pw}</h4>
	<h4>이름 : ${MemberBean.name }</h4>
	<c:set var="mb1" value="${requestScope.MemberBean }" />
	<h4>나이 : ${mb1.age }</h4>
	
	<hr>
	
	<h3> 서블릿에서 전달되는 리스트 정보를 출력</h3>
	<!-- 리스트 첫번째 요소만 출력 -->
	<h4>아이디 : ${requestScope.memberList[0].id}</h4>
	<h4>비밀번호 : ${memberList[0].pw}</h4>
	<h4>이름 : ${memberList[0].name}</h4>
	<h4>나이 : ${memberList[0].age}</h4>
	<h4>아이디 : ${requestScope.memberList[1].id}</h4>
	<h4>비밀번호 : ${memberList[1].pw}</h4>
	<h4>이름 : ${memberList[1].name}</h4>
	<h4>나이 : ${memberList[1].age}</h4>
	
</body>
</html>