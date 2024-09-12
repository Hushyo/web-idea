package com.controller.Introduction;

import com.entity.Lab;
import com.entity.New;
import com.service.ServiceFactory;
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
import java.util.List;

@WebServlet("/announciation")
public class AnnounceServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String type=req.getParameter("type");
        int id=Integer.parseInt(req.getParameter("nid"));
        String sql="select * from "+type+" where id=?";
        New announce=new New();

        List<Lab> labs= ServiceFactory.getLabService().listLabs();

        try (Connection connection= DataSourceUtils.getConnection();
             PreparedStatement ps=connection.prepareStatement(sql)){

            ps.setInt(1,id);
            try (ResultSet rs=ps.executeQuery()){
                rs.next();
                announce.setId(rs.getInt("id"));
                announce.setTitle(rs.getString("title"));
                announce.setContext(rs.getString("content"));
                announce.setPublishTime(rs.getObject("publish_time", LocalDateTime.class));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("labs",labs);
        req.setAttribute("announce",announce);
        req.getRequestDispatcher("/WEB-INF/pages/introductionNews.jsp").forward(req,resp);
    }
}
