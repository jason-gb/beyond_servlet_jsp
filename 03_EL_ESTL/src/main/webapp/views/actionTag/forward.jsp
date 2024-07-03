<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp:forward</title>
</head>
<body>
	<h3>jsp:forward</h3>
	<p>
		
	</p>
	
	<%
		request.setAttribute("userName", "홍길동");
		request.setAttribute("userAge", "30");
	%>
	
	<jsp:forward page="forwardPage.jsp"></jsp:forward>
</body>
</html>