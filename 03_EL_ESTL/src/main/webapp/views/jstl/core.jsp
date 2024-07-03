<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Core Library</title>
</head>
<body>
	<h2>JSTL Core Library</h2>
	
	<h3>1. 변수</h3>

	<h4>1) 변수 선언(c:set)</h4>
	
	<p>
		변수를 선언하고 초기값을 대입하는 태그이다.
	</p>
	<c:set var="num1" value="10" />
	<c:set var="num2" value="20" scope="request" />
	<c:set var="result" value="${ num1 + num22 }" scope="session" />
	<c:set var="colors" scope="application">red, blue, yellow, pink, green</c:set>
		
	num1의 값 : ${ num1 }	또는 ${ pageScope.num1 }<br>
	num2의 값 : ${ num2 }	또는 ${ requestScope.num2 }<br>
	result의 값 : ${ result }	또는 ${ sessionScope.result }<br>
	color의 값 : ${ colors } 또는 ${ applicationScope.colors } 
		
	<h4>2) 변수 삭제(c:remove)</h4>

</body>
</html>