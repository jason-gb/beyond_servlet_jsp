<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String year = "2024";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h4>include 페이지</h4>
	
	<p>
		includePage.jsp 의 year 변수의 값은 <%= year %> 입니다.<br>
	</p>
	
	pName : ${param.pName}
</body>
</html>