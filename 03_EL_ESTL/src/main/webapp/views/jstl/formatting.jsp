<%@page import="java.util.Date"%>
<%@page import="javax.xml.crypto.Data"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>JSTL Formatting Library</h2>
	<%-- 
	톰캣 서버의 Locale : ${ pageContext.response.locale }
	<fmt:setLocale value="tr_TR"/>
	<fmt:setLocale value="en_US"/>
	<fmt:setLocale value="ja_JP"/>
	--%>
	
	<h3>1. fmt:formatNumber태그</h3>
	
	<p>
		숫자 데이터의 출력 형식을 지정할 때 사용하는 태그이다.
	</p>
	
	세 자리마다 구분하여 출력 : <fmt:formatNumber value="123456789" groupingUsed="true"/><br>
	숫자 그대로 출력 : <fmt:formatNumber value="123456789" groupingUsed="false"/>

	<br><br>
	<%--
		pattern 
			- 화면에 표시할 숫자 데이터의 패턴을 저장한다.
			- #, 0을 패턴 기호로 사용한다.
			- 패턴 기호가 부족한 부분에 대해서는 #은 표시하지 않지만 0은 0으로 표시한다.
			- 패턴 기호를 초과하는 부분은 반올림된다.
	 --%>
	#을 이용해서 pattern 지정 : <fmt:formatNumber value="1.2346" pattern="#.###"/><br>
	0을 이용해서 pattern 지정 : <fmt:formatNumber value="1.2346" pattern="0.000"/>
	
	<br><br>
	
	<fmt:formatNumber value="50000"/><br>
	<fmt:formatNumber type="number" value="50000"/><br>
	<fmt:formatNumber type="currency" value="50000"/><br>
	<fmt:formatNumber type="currency" currencySymbol="$" value="50000"/><br>
	<fmt:formatNumber type="percent" value="0.4"/><br>
	
	<h3>2. fmt:formatDate 태그</h3>
	<p>
		날짜와 시간의 데이터 포멧을 지정할 때 사용하는 태그이다.
	</p>
	<c:set var="date" value="<%= new Date() %>"/>
	
	<ul>
		<li><fmt:formatDate value="${ date }"/></li>
		<li><fmt:formatDate type="date" value="${ date }"/></li>
		<li><fmt:formatDate type="time" value="${ date }"/></li>
		<li><fmt:formatDate type="both" value="${ date }"/></li>
		<li><fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${ date }"/></li>
		<li><fmt:formatDate type="both" dateStyle="medium" timeStyle="medium" value="${ date }"/></li>
		<li><fmt:formatDate type="both" dateStyle="long" timeStyle="long" value="${ date }"/></li>
		<li><fmt:formatDate type="both" dateStyle="full" timeStyle="full" value="${ date }"/></li>
		<li><fmt:formatDate type="both" pattern="yyyy-MM-dd(E) HH:mm:ss(a)" value="${ date }"/></li>
	</ul>
</body>
</html>