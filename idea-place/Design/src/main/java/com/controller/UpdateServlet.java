package com.controller;

import com.util.DataSourceUtils;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/update")
public class UpdateServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id= Integer.parseInt(req.getParameter("uid"));
        String name=req.getParameter("newname");
        String sql="update user set name=? where id=?";
        try (Connection conn= DataSourceUtils.getConnection();
             PreparedStatement ps=conn.prepareStatement(sql);
             ){
            ps.setInt(2,id);
            ps.setString(1,name);
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        resp.sendRedirect(req.getContextPath()+"/index");
    }
}
