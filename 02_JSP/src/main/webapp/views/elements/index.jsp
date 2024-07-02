<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 요소</title>
</head>
<body>
	<h1>JSP 요소</h1>
	
	<!-- HTML 주석 태그 -->
	<%-- JSP 주석 태그 --%>
	<%--
		두 주석의 차이점
		페이지의 소스 보기 혹은 개발자 도구에서 HTML 주석은 확인 가능하고 JSP주석은 확인이 불가능하다.
	 --%>
	 
	 <%-- 선언문 태그 --%>
	 <%!
	 	private String name = "홍길동";
	 	
	 	// 메소드 선언
	 	public String getName(){
	 		return this.name;
	 	}
	 %>
	 
	 <%-- 스크립트 릿 태그 --%>
	<%
		// 자바 코드 기술
		int sum = 0;
		
		for (int i = 1 ; i <= 10 ; i++){
			sum += i;
			
			//out.print(sum + " ");
		%>
		<h2>안녕하세요</h2>
		<%
		}
		
		System.out.println(sum);
	%>
	
	<%-- 표현식 태그 --%>
	저의 이름은 <% out.print(name); %>입니다 <br>
	저의 이름은 <%= name %>입니다 <br>
	
	1부터 5까지의 합은 ? <span style="color: fuchsia; font-size: 2em;"><%= sum %></span> <br>

</body>
</html>