package com.controller;

import com.entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if(req.getSession().getAttribute("user")!=null){
            resp.sendRedirect(req.getContextPath()+"/backstage?type=news");
        }
        else{
            req.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(req,resp);
        }
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username= req.getParameter("username");
        String password= req.getParameter("password");
        String url;
        if(username.equals("admin")&& password.equals("admin")){
            User user=new User();
            user.setName(username);
            user.setPassword(password);
            req.getSession().setAttribute("user",user);
            url="/backstage?type=news";
        }
        else{
            url="/login";
        }
        resp.sendRedirect(req.getContextPath()+url);
    }
}
