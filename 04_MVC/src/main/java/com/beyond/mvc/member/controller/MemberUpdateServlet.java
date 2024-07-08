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

@WebServlet(name = "updateServlet", urlPatterns = "/member/update")
public class MemberUpdateServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
        Member loginMember = (Member) session.getAttribute("loginMember");

        if (loginMember != null) {
        	loginMember.setName(request.getParameter("userName"));
        	loginMember.setPhone(request.getParameter("phone"));
        	loginMember.setEmail(request.getParameter("email"));
        	loginMember.setAddress(request.getParameter("address"));

            String hobby = request.getParameterValues("hobby") != null ? 
            		String.join(",", request.getParameterValues("hobby")) : null;

            loginMember.setHobby(hobby);
            
            int result = new MemberServiceImpl().save(loginMember);
            
            if (result > 0) {
            	request.setAttribute("msg", "회원 정보 수정이 완료되었습니다.");
                request.setAttribute("location", "/member/info");
            } else {
            	request.setAttribute("msg", "회원 정보 수정을 실패하였습니다.");
                request.setAttribute("location", "/member/info");
            }

        } else {
            request.setAttribute("msg", "로그인 후 사용해 주세요.");
            request.setAttribute("location", "/");
        }
        request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
    }

}