<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h2>EL 연산자</h2>

    <h3>1. 산술 연산자</h3>
    ${ 10 + 5 }<br>
    ${ 10 - 5 }<br>
    ${ 10 * 5 }<br>
    ${ 10 / 5 } 또는 ${10 div 5}<br>
    ${ 10 % 3 } 또는 ${10 mod 3}<br>

    <h3>2. 논리연산자</h3>
    ${ true && false } 또는 ${true and false }<br>
    ${ true || false } 또는 ${true or false }<br>
    ${ !(10 > 5) } 또는 ${ not(10 > 5) }
    
    <h3>2. 비교연산자</h3>
    <h4>1) 숫자 비교 연산</h4>
	<%
		int num1 = 10;
		int num2 = 3;
		
		pageContext.setAttribute("num1", num1);
		pageContext.setAttribute("num2", num2);
	%>
	표현식 태그 : <%= (Integer)pageContext.getAttribute("num1") > (Integer)pageContext.getAttribute("num2") %><br>
	EL : ${ num1 == num2 } 또는 ${ num1 eq num2 }<br>
	EL : ${ num1 != num2 } 또는 ${ num1 ne num2 }<br>
	EL : ${ num1 > num2 } 또는 ${ num1 gt num2 }<br>
	EL : ${ num1 < num2 } 또는 ${ num1 lt num2 }<br>
	EL : ${ num1 >= num2 } 또는 ${ num1 ge num2 }<br>
	EL : ${ num1 <= num2 } 또는 ${ num1 le num2 }<br>
	
	
	<h4>객체 동등 비교</h4>
	<%
		String str1 = "Hello";
		String str2 = new String("Hello");
		
		request.setAttribute("str1", str1);
		request.setAttribute("str2", str2);
	%>
	표현식 태그 : <%= str1 == str2 %>, <%= str1.equals(str2) %><br>
	EL : ${ str1 == str2 }<br>
	EL : ${ str1 != str2 }<br>
	
	<h4>객채가 null 또는 비어있는지 체크하는 연산자</h4>
	<%
		String str = null;
		List<String> list = new ArrayList<>();
		
		list.add("수박");
	
		pageContext.setAttribute("str", str);
		pageContext.setAttribute("list", list);
	%>
	표현식 태그 : <%= str1 == null %>, <%= list.isEmpty() %><br>
	EL : ${ str == null }, ${ empty str }<br>
	EL : ${ empty list }
	
	
	
	
	
	

</body>
</html>