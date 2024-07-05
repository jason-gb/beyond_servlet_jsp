package com.beyond.mvc.member.controller;

import java.io.IOException;
import java.util.Arrays;

import com.beyond.mvc.member.model.service.MemberServiceImpl;
import com.beyond.mvc.member.model.vo.Member;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "enrollServlet", urlPatterns = "/member/enroll")
public class MemberEnrollServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/views/member/enroll.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Member member = new Member();
		
		member.setId(request.getParameter("userId"));
		member.setPassword(request.getParameter("userPwd"));
		member.setName(request.getParameter("userName"));
		member.setPhone(request.getParameter("userPhone"));
		member.setEmail(request.getParameter("userEmail"));
		member.setAddress(request.getParameter("userAddress"));
		
		String hobby = request.getParameterValues("hobby") != null ? 
				String.join(",",request.getParameterValues("hobby")) : null;
		
		member.setHobby(hobby);
		
		int result = new MemberServiceImpl().save(member);
		
		if(result > 0) {
			request.setAttribute("msg", "회원 가입 성공");
			request.setAttribute("location","/");
		} else {
			request.setAttribute("msg", "회원 가입 실패");
			request.setAttribute("location","/member/enroll");
		}
		
		request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
	}
	
	
	
	

}
