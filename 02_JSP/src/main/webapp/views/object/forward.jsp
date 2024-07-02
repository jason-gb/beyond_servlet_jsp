<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		forward(String path)
			- 매개값으로 지정한 경로로 현재 페이지의 요청과 응답에 대한 제어권을 넘긴다.
			- 포워드 방식은 현재 페이지의 요청과 응답 정보를 다른 페이지로 넘기기 때문에 요청 정보와 응답 정보가 유지된다.
	*/
	//pageContext.forward("forward_target.jsp");
	pageContext.forward("/views/object/forward_target.jsp");
%>