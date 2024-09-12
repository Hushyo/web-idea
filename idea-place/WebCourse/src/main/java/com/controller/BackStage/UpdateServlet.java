package com.controller.BackStage;

import com.entity.New;
import com.entity.Notice;
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
import java.util.ArrayList;
import java.util.List;

@WebServlet("/update")
public class UpdateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("id",req.getParameter("id"));
        req.setAttribute("table",req.getParameter("table"));
        req.getRequestDispatcher("/WEB-INF/pages/updateform.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String table=req.getParameter("table");
        String sql="update "+table+" set title=?,content=? where id=?";

        int uid=Integer.parseInt(req.getParameter("uid"));
        String title=req.getParameter("title");
        String content=req.getParameter("content");
        try(Connection conn= DataSourceUtils.getConnection();
            PreparedStatement ps=conn.prepareStatement(sql)){

            ps.setInt(3,uid);
            ps.setString(1,title);
            ps.setString(2,content);

            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        resp.sendRedirect(req.getContextPath()+"/backstage?type="+table);
    }
}
