<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userName = request.getParameter("userName");    
	String userAge = request.getParameter("userAge");    
	String userGender = request.getParameter("userGender");    
	String[] foods = request.getParameterValues("food");
	
	System.out.println(userName);
	System.out.println(userAge);
	System.out.println(userGender);
	System.out.println(Arrays.toString(foods));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인 정보 출력</title>
</head>
<body>
	<h2>개인 정보 출력</h2>
	
	<%= userAge %> 님은 <%= userAge %> 세, 성별은 <%= userGender%> 입니다. <br>
	좋아하는 음식은
	<%
		for(String food : foods){
	%>
	<span style="color: green;"><%= food + " " %></span>
	<%
		}
	%>
	입니다.
</body>
</html>