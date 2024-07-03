package com.beyond.el;

import java.io.IOException;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/el.do")
public class ELServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public ELServlet() {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        ServletContext application =  request.getServletContext();

        //Request 영역에 데이터를 저장
        request.setAttribute("classroom", "room5");
        request.setAttribute("student", new Student("홍길동", 24, 80, 80));
        request.setAttribute("scope", "Request 영역");
        
        // Session 영역에 데이터를 저장
        session.setAttribute("classroom", "room4");
        session.setAttribute("student", new Student("성춘향", 20, 90, 90));
        session.setAttribute("scope", "Session 영역");
        
        // Application 영역에 데이터를 저장
        application.setAttribute("classroom", "room3");
        application.setAttribute("student", new Student("이몽룡", 24, 80, 90));
        application.setAttribute("scope", "Application 영역");
        
        request.getRequestDispatcher("/views/el/el.jsp").forward(request, response);

    }

}
