<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 내장 객체</title>
</head>
<body>
	<h2>JSP 내장 객체</h2>
	
	<h3>1. request</h3>
	<p>
		웹 브라우저의 요청 정보를 가지고 있는 객체이다.
	</p>
	
	<table border="4">
		<tr>
			<th>헤더 이름</th>
			<th>헤더 값</th>
		</tr>
		<tr>
			<td>데이터 이름</td>
			<td>데이터 값</td>
		</tr>
		
		<%
			// 요청 헤더의 name 속성들을 읽어온다.
			Enumeration<String> headerNames = request.getHeaderNames();
		
			while (headerNames.hasMoreElements()){
				// 여기 헤더 이름 담김
				String headerName = headerNames.nextElement();
		%>
		<tr>
			<td><%= headerName %></td>
			<td><%= request.getHeader(headerName) %></td>
		</tr>
		<%		
			}
		%>
	</table>
	
	<h4>2) URL/URI, 요청 방식과 관련한 메소드</h4>
	
	<table border="1">
		<tr>
			<th>이름</th>
			<th>값</th>
		</tr>
		<tr>
			<td>프로토콜</td>
			<td><%= request.getProtocol() %></td>
		</tr>
		<tr>
			<td>요청 방식</td>
			<td><%= request.getMethod() %></td>
		</tr>
		<tr>
			<td>URL</td>
			<td><%= request.getRequestURL() %></td>
		</tr>
		<tr>
			<td>URI</td>
			<td><%= request.getRequestURI() %></td>
		</tr>
		<tr>
			<td>쿼리 스트링</td>
			<td><%= request.getQueryString() %></td>
		</tr>
		<tr>
			<td>웹 애플리케이션 경로</td>
			<td><%= request.getContextPath() %></td>
		</tr>
	</table>
	
	
</body>
</html>