<%@page import="com.beyond.el.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// Request 영역에 저장된 속성을 가져온다
	//String classroom = (String)request.getAttribute("classroom");
	//Student student = (Student)request.getAttribute("student");

	// Session 영역에 저장된 속성을 가져온다
	//String classroom = (String)session.getAttribute("classroom");
	//Student student = (Student)session.getAttribute("student");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL(Expression Language)</title>
</head>
<body>
	<h2>EL(Expression Language)</h2>
	<%-- 
	<h3>1. 기존 방식으로 request , session 객체에 담겨 있는 데이터를 출력</h3>
	강의장 : <%= classroom %><br>
	수강생 : <%= student.getName() %>, <%= student.getAge() %>
	--%>
	
	<h3>2. EL 방식으로 request, session 객체에 담겨있는 데이터를 출력</h3>
	<!-- 
		1. EL은 영역 객체에 저장된 속성명을 검색해서 존재하는 경우 값을 가져온다.
			- Page -> Request -> Session -> Application 영역 순으로 해당 속성을 찾아서 값을 가져온다.
	 	2. EL은 객체의 필드에 직접 접근하는 것처럼 보이지만 내부적으로는 해당 객체의 Getter 메소드로 접근해서 값을 읽어온다.
	 -->
	강의장 : ${ classroom }<br>
	수강생 : ${ student.name }, ${ student.age }

	<br><br>

	강의장 : ${ sessionScope.classroom }<br>
	수강생 : ${ sessionScope.student.name }, ${ sessionScope.student.age }
	
	<h3>3. EL 사용 시 영역 객체에 저장된 속성명이 같은 경우</h3>
	<%
		pageContext.setAttribute("scope", "Page 영역");
	%>
	
	scope : ${ scope }<br>
	pageScope : ${ pageScope.scope }<br>
	requestScope : ${ requestScope.scope }<br>
	sessionScope : ${ sessionScope.scope }<br>
	applicationScope : ${ applicationScope.scope }<br>
	
	
	<h3>4. ContextPath 가져오기</h3>
	
	<h4>1) 표현식 태그를 사용하는 방법</h4>
	ContextPath : <%= request.getContextPath() %>
	
	<h4>2) EL을 사용하는 방법</h4>
	ContextPath : ${ pageContext.request.contextPath}
	
	<h3>5. 헤더에 접근하기</h3>
	<h4>1) 표현식 태그를 사용하는 방법</h4>
	Host : <%= request.getHeader("Host") %>
	User-Agent : <%= request.getHeader("User-Agent") %>

	<h4>2) EL을 사용하는 방법</h4>
	Host : ${ header.host }<br>
	User-Agent : ${ header['User-Agent'] }
	
	<h3>6. 파라미터에 접근하기</h3>
	<form action="${ pageContext.request.contextPath }/views/el/elParam.jsp" method="get">
		<fieldset>
			<legend>제품 입력</legend>
			<input type="text" name="pName" placeholder="제품명을 입력하세요."/><br>
			<input type="number" name="pCount" placeholder="수량을 입력하세요."/><br>
			<input type="text" name="option" placeholder="옵션을 입력하세요."/><br>
			<input type="text" name="option" placeholder="옵션을 입력하세요."/><br>
			<br><br>
			<input type="submit" value="전송"/>
			<input type="reset" value="초기화"/>
		</fieldset>
	</form>


</body>
</html>