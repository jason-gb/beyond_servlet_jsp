package com.beyond.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/*
 * 서블릿을 실행시키는 방법
 *   1. jakarta.servlet.http.HttpServlet 상속하는 클래스를 생성한다.
 *   2. 서블릿 등록 및 매핑한다.
 *     - web.xml에 서블릿을 등록 및 매핑한다.
 *     - @WebServlet 어노테이션으로 서블릿을 등록 및 매핑한다.
 */
public class FirstServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		out.write("<!DOCTYPE html>");
		out.write("<html>");
		out.write("<body>");
		out.write("<h1>첫 번째 서블릿이 반환한 내용</h1>");
		out.write("<p>현재 시간 : " + LocalDateTime.now().toString() + "</p>");
		out.write("</body>");
		out.write("</html>");
		out.write(LocalDateTime.now().toString());
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
	
	
	
		
}