package com.controller.Introduction;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/introductionSelf")
public class IntroductionSelfServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id= Integer.parseInt(req.getParameter("id"));
        req.setAttribute("id",id);
        req.getRequestDispatcher("/WEB-INF/pages/introductionSelf.jsp").forward(req,resp);

    }
}
