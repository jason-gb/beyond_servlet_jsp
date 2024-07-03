<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL/JSTL</title>
</head>
<body>
	<h1>EL/JSTL</h1>
	
	< <h2>1. EL</h2>
	<p>
		표현식 태그를 대신하여 클라이언트에 출력하고자 하는 값들은 좀 더 간결하게 사용하는 방법이다.
	</p>
	
	<h3>1) EL 내장 객체</h3>
	
	<a href="${ path }/el.do">View Details</a>
	
	<h3>2) EL 연산자</h3>
	
	<a href="${ path }/views/el/elOperators.jsp">View Details</a>

	<h2>2. JSP Action Tag</h2>
    <p>
    JSP에서 자바 코드를 직접 입력하지 않고 특정 작업을 수행하는데 사용하는 태그이다.
    액션 태그의 경우 웹 브라우저에서 실행되는 것이 아니라 웹 컨테이너(톰캣)에서 실행된다.
    </p>

	<h3>1) 표준 액션 태그</h3>
    <p>
        JSP에서 기본으로 제공하는 액션 태그로 별도의 라이브러리 설치 없이 바로 사용할 수 있다.
    </p>

    <a href="${ path }/views/actionTag/include.jsp">View Details</a><br>
    <a href="${ path }/views/actionTag/forward.jsp">View Details</a><br>

	<h3>2) JSTL (JSP Standard Tag Library)</h3>

    <p>
        JSP 페이지에서 자주 사용하는 코드들을 사용하기 쉽게 태그로 만들어 표준으로 제공한다.
    </p>

    <h4>2-1) JSTL Core Library</h4>

    <p>
        변수와 URL, 조건문, 반복문들의 로직과 관련된 액션 태그를 제공한다.
    </p>

    <a href="${ path }/views/jstl/core.jsp">View Details</a>
	<br><br><br><br><br><br>



</body>
</html>