<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	sendRedirect(String uri)
		- 매개값으로 지정한 경로로 요처을 재전송한다.
		- 리다이렉트 방식은 이동할 페이지로 요청과 응답 객체를 새로 생성하여 전송하므로 이전 요청과 응답 정보가 유지되지 않는다.
	*/
	//response.sendRedirect("redirect_target.jsp");  
	//response.sendRedirect("/02_JSP/views/object/redirect_target.jsp");  
	response.sendRedirect(request.getContextPath() + "/views/object/redirect_target.jsp");  
%>