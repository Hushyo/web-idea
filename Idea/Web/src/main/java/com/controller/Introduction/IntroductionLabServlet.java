package com.controller.Introduction;

import com.entity.Lab;
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

@WebServlet("/introductionLab")
public class IntroductionLabServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        int lid= Integer.parseInt(req.getParameter("lid"));
        String sql="select * from labs where lid=?";
        String allSql="select * from labs";

        List<Lab> labs=new ArrayList<>();
        Lab lab=new Lab();

        try(Connection connection= DataSourceUtils.getConnection();
            PreparedStatement allPs=connection.prepareStatement(allSql);
            PreparedStatement ps=connection.prepareStatement(sql);
            ResultSet allRs=allPs.executeQuery()){
            while (allRs.next()){
                Lab labInList=new Lab(allRs.getInt("lid"),allRs.getString("lname"),
                        allRs.getString("lintroduction"),allRs.getObject("edit_time",LocalDateTime.class),
                        allRs.getString("limg"));
                labs.add(labInList);
            }
            ps.setInt(1,lid);
            try(ResultSet rs=ps.executeQuery()){
                if(rs.next()){
                    lab.setLid(rs.getInt("lid"));
                    lab.setLname(rs.getString("lname"));
                    lab.setLintroduction(rs.getString("lintroduction"));
                    lab.setEditTime(rs.getObject("edit_time", LocalDateTime.class));
                    lab.setLimg(rs.getString("limg"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("labs",labs);
        req.setAttribute("lab",lab);
        req.getRequestDispatcher("/WEB-INF/pages/introductionLab.jsp").forward(req,resp);
    }
}
