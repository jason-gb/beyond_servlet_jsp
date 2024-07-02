<%@ page import="java.util.Enumeration" %>
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

    <h4>1) 헤더와 관련된 메소드</h4>

    <table border="1" >
        <tr>
            <th>헤더 이름</th>
            <th>헤더 값</th>
        </tr>
        <%
            // 요청 헤더의 name 속성을 읽어옴
            Enumeration<String> headerNames = request.getHeaderNames();
            while(headerNames.hasMoreElements()){
                String headerName = headerNames.nextElement();
        %>
        <tr>
            <td><%= headerName %></td>
            <td><%= request.getHeader(headerName) %>
        </tr>
        <% 
            }
        %>

    </table>

    <h4>2) URL/URI, 요청 방식과 관련된 메소드</h4>

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
            <td>서버 URL</td> 
            <td><%= request.getRequestURL() %></td> 
        </tr>
        <tr>
            <td>서버 URI</td> 
            <td><%= request.getRequestURI() %></td> 
        </tr>
        <tr>
            <td>쿼리 스트링</td> 
            <td><%= request.getQueryString() %></td> 
        </tr>
    </table>
<h3>2. response</h3>
    <p>
        웹 브라우저의 요청에 대한 응답 객체이다.
    </p>

    <h4>1) Redirect</h4>
    <a href="redirect.jsp">View Details</a>

    <h3>3. pageContext</h3>
    <p>
        다른 내장 객체를 얻어내거나 현재 페이지의 요청과 응답의 제어권을 다른 페이지로 넘겨주는데 사용하는 객체이다.
    </p>

    <h4>1) Forward</h4>
    <a href="forward.jsp">View Details</a>

    <h3>4. Session</h3>
    <p>
        웹 브라우저의 정보를 유지하기 위한 세션 정보를 저장하고 있는 객체이다.
    </p>
    <%
    	session.setAttribute("userId", "bum123");
    	// 클라이언트의 요청이 없더라도 세션을 유지할 시간을 초 단위로 설정한다.
    	session.setMaxInactiveInterval(10);
    	
    	// 서버에서 쿠키 생성 후 클라이언트로 전송하는 방법
    	Cookie cookie = new Cookie("userAge", "24");
    	cookie.setMaxAge(10);
    	
    	response.addCookie(cookie);
    %>
    
    세션 ID : <%= session.getId() %><br>
    inNew : <%= session.isNew() %><br>
    userId : <%= session.getAttribute("userId") %>
    
    <h3>5. application</h3>
	<p>
		
	</p>
	
	<table border="1">
		<tr>
			<td>컨테이너 정보</td>
			<td><%= application.getServerInfo() %></td>
		</tr>
		<tr>
			<td>웹 모듈 버전</td>
			<td><%= application.getMajorVersion() %></td>
		</tr>
		<tr>
			<td>웹 애플리케이션의 실제 파일 시스템 경로</td>
			<%-- 
			<td><%= application.getRealPath("/") %></td>
			--%>
			<td><%= application.getRealPath("/views/error/error404.jsp") %></td>
		</tr>
	</table>
</body>
</html>