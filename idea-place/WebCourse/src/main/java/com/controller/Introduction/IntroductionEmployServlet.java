package com.controller.Introduction;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/introductionEmploy")
public class IntroductionEmployServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id=Integer.parseInt(req.getParameter("identity"));
        req.setAttribute("id",id);
        req.getRequestDispatcher("/WEB-INF/pages/introductionEmploy.jsp").forward(req,resp);
    }
}
