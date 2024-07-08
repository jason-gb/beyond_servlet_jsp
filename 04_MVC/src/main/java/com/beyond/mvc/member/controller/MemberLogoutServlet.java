package com.beyond.mvc.member.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "logoutServlet", urlPatterns = "/logout")
public class MemberLogoutServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 로그아웃 순서
		
		// 1. 세션 객체를 얻어온다.
		HttpSession session = request.getSession();
		
		// 2. 세션을 삭제한다.
		session.invalidate();
		
		// 3. 삭제 후 메인 화면으로 리다이렉트
		response.sendRedirect(request.getContextPath() + "/");
	}
}
