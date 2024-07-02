<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    <% 	LocalDateTime now = LocalDateTime.now();
	String today = now.format(DateTimeFormatter.ofPattern("YYYY-MM-dd hh:mm:ss"));

	// 에러 페이지 확인을 위한 에러 코드 작성
	//int result = 10 / 0 ;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
		<h1>지시자 태그</h1>
		<p>
			오늘은 <span style="color: tomato;"><%= today %></span>입니다.
		</p>
	</header>
</body>
</html>