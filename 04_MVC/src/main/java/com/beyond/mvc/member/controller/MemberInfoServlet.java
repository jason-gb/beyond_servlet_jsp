package com.beyond.mvc.member.controller;

import java.io.IOException;

import com.beyond.mvc.member.model.vo.Member;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "infoServlet", urlPatterns = "/member/info")
public class MemberInfoServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        Member loginMember = (Member) session.getAttribute("loginMember");

        if (loginMember != null) {
            request.getRequestDispatcher("/views/member/info.jsp").forward(request, response);
        } else {
            request.setAttribute("msg", "로그인 후 사용해 주세요.");
            request.setAttribute("location", "/");

            request.getRequestDispatcher("/view/common/msg.jsp").forward(request, response);
        }


    }



}
