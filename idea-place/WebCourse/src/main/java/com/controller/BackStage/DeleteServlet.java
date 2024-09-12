package com.controller.BackStage;

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

@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int did=Integer.parseInt(req.getParameter("did"));
        String table=req.getParameter("table");

        String sql="delete from "+table+" where id=?";

        try(Connection connection= DataSourceUtils.getConnection();
            PreparedStatement ps=connection.prepareStatement(sql)) {

            ps.setInt(1,did);
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        resp.sendRedirect(req.getContextPath()+"/backstage?type="+table);
    }
}
