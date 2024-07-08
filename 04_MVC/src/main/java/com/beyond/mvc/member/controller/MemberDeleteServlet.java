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

@WebServlet(name = "deleteServlet", urlPatterns = "/member/delete")
public class MemberDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
        Member loginMember = (Member) session.getAttribute("loginMember");

        if (loginMember != null) {
        	int result = new MemberServiceImpl().delete(loginMember.getNo());
        	
        	if (result > 0) {
        		session.invalidate();
        		request.setAttribute("msg", "정상적으로 탈퇴되었습니다.");
                request.setAttribute("location", "/");

			} else {
				request.setAttribute("msg", "탈퇴에 실패하였습니다.");
	            request.setAttribute("location", "/member/info");

			}
            
        } else {
            request.setAttribute("msg", "로그인 후 사용해 주세요.");
            request.setAttribute("location", "/");

        }
        request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
        
	}
	
	

}
