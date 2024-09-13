package com.controller;

import com.entity.Lab;
import com.entity.New;
import com.entity.Notice;
import com.service.ServiceFactory;
import com.util.DataSourceUtils;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.Console;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/home")
public class HomePageServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setAttribute("news",ServiceFactory.getAnnounceService().listNews());
        req.setAttribute("notices",ServiceFactory.getAnnounceService().listNotices());
        HttpSession session=req.getSession();
        session.setAttribute("labs",ServiceFactory.getLabService().listLabs());
        req.getRequestDispatcher("/WEB-INF/pages/homepage.jsp").forward(req,resp);
    }
}
