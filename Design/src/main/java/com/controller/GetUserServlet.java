package com.controller;

import com.entity.User;
import com.service.ServiceFactory;
import com.service.UserService;
import com.util.DataSourceUtils;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;

@WebServlet("/getuser")
public class GetUserServlet extends HttpServlet {
    private final UserService userService= ServiceFactory.getUserService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id=Integer.parseInt(req.getParameter("uid"));
        req.setAttribute("user",userService.getUser(id));
        req.getRequestDispatcher("/WEB-INF/jsp/query.jsp").forward(req,resp);
    }
}
