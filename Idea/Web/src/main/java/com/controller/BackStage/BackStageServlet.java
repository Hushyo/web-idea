package com.controller.BackStage;

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

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/backstage")
public class BackStageServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session=req.getSession();

        if(session.getAttribute("user")!=null){
            String type=req.getParameter("type");
            if(type.equals("news")){
                List<New> news= ServiceFactory.getAnnounceService().listAllNews();
                req.setAttribute("type",type);
                req.setAttribute("news",news);
            }else{
                List<Notice> notices= ServiceFactory.getAnnounceService().listAllNotices();
                req.setAttribute("type",type);
                req.setAttribute("notices",notices);
            }
            req.getRequestDispatcher("/WEB-INF/pages/back.jsp").forward(req,resp);
        }
        else{
            resp.sendRedirect(req.getContextPath()+"/login");
        }
    }
}
