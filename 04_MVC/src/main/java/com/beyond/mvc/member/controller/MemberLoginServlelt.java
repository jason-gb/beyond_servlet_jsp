package com.beyond.mvc.member.controller;

import java.io.IOException;

import com.beyond.mvc.member.model.service.MemberServiceImpl;
import com.beyond.mvc.member.model.vo.Member;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "loginServlet", urlPatterns = "/login")
public class MemberLoginServlelt extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse respons) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		
		Member loginMember = new MemberServiceImpl().login(userId, userPwd);
		HttpSession session = null;
		
		if(loginMember != null) {
			// loginMember 객체를 세션에 저장
			session = request.getSession();
			
			session.setAttribute("loginMember", loginMember);
			
			// 로그인이 완료되면 메인 화면으로 이동시킨다.
			respons.sendRedirect(request.getContextPath() + "/");
		} else {
			// 로그인 실패에 대한 메시지를 띄워주고 메인 화면으로 이동
			
			// 1. 공용으로 사용하는 에러 메세지 출력 페이지에 전달할 메세지와 메세지출력 후 이동할 페이지를 request객체에 저장(attribute로)
			request.setAttribute("msg", "아이디나 비밀번호가 일치하지 않습니다.");
			request.setAttribute("location", "/");
			
			// 2. request 객체의 데이터를 유지해서 에러 메세지를 출력 페이지에 전달하기 위해서 forward 실행
			request.getRequestDispatcher("/views/common/msg.jsp").forward(request, respons);
		}
		
	}
	
	
	
	
}
