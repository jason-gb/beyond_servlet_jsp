<%@page import="java.util.ArrayList"%>
<%@page import="com.beyond.el.Student"%>
<%@page import="java.util.List"%>
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
	<c:set var="num1" value="30" />
	<c:set var="num2" value="20" scope="request" />
	<c:set var="result" value="${ num1 + num22 }" scope="session" />
	<c:set var="colors" scope="application">red, blue, yellow, pink, green</c:set>
		
	num1의 값 : ${ num1 }	또는 ${ pageScope.num1 }<br>
	num2의 값 : ${ num2 }	또는 ${ requestScope.num2 }<br>
	result의 값 : ${ result }	또는 ${ sessionScope.result }<br>
	color의 값 : ${ colors } 또는 ${ applicationScope.colors } 
		
	<h4>2) 변수 삭제(c:remove)</h4>
	
	<p>
		c:set 태그로 선언한 변수를 삭제할 때 사용하는 태그이다.
	</p>
	
	<c:set var="result" value="9999"/>
	<c:set var="result" value="10000" scope="request"/>
	
	삭제 전 : ${ result }<br>

	<c:remove var="result" scope="page"/>

	삭제 후 : ${ result }<br>
	
	<c:remove var="result" />

	삭제 후 : ${ result }<br>
	
	<h3>2. 출력</h3>
	
	<p>
		클라이언트로 데이터를 출력할 때 c:out 태그를 사용한다.
	</p>
	
	태그를 문자열로 출력 : <c:out value="<b>태그로 출력하기</b>" escapeXml="true"/><br>
	태그로 해석되어 출력 : <c:out value="<b>태그로 출력하기</b>" escapeXml="false"/><br>
	기본값 출력 : <c:out value="${ result }" default="0"/>
	
	<h3>3. 조건 처리 태그</h3>
    <h4>1) c:if 태그</h4>
    <p>
        자바의 if 구문과 같은 역할을 하는 태그이다.
    </p>

    <c:if test="${ num1 > num2 }">
        <b>num1이 num2보다 크다.</b>
    </c:if>

    <c:if test="${ num1 < num2 }">
        <b>num1이 num2보다 작다.</b>
    </c:if>
    
    <h4>2) c:choose</h4>
    <p>
    	자바의 switch 구문과 같은 역할을 하는 태그이다.
    </p>
    
    <c:choose>
    	<c:when test="${ num1 > num2 }">
    		<b>num1이 num2보다 크다.</b>
    	</c:when>
    	<c:when test="${ num1 < num2 }">
    		<b>num1이 num2보다 작다.</b>
    	</c:when>
    	<c:otherwise>
    		<b>num1과 num2가 같다.</b>
    	</c:otherwise>
    </c:choose>
    
    <h3>4. 반복 처리 태그</h3>
    
    <h4>1) c:forEach 태그</h4>
    
    <p>
    	자바의 for 구문에 해당하는 역할을 하는 태그이다.
    </p>
	
	<c:forEach var="i" begin="1" end="5">
		<%-- 		
		${ i }<br>
		--%>
		<h${ i }>반복 확인</h${ i }>
	</c:forEach>
	
	<%
        List<Student> students = new ArrayList<>();

        students.add(new Student("홍길동", 30, 70, 80));
        students.add(new Student("이몽룡", 24, 80, 80));
        students.add(new Student("성춘향", 20, 85, 85));
        students.add(new Student("영심이", 20, 90, 90));

        pageContext.setAttribute("students", students);
    %>

    <h5>학생 목록 조회</h5>
    <table border="1">
        <tr>
            <th>이름</th>
            <th>나이</th>
            <th>수학 점수</th>
            <th>영어 점수</th>
        </tr>
        <c:forEach var="student" items="${ students }">
        	<tr>${ student.name }</tr>
			<td>${ student.age }</td>
			<td>${ student.math }</td>
			<td>${ student.english }</td>
			<td></td>
        </c:forEach>
    </table>
	
	
	
    
</body>
</html>