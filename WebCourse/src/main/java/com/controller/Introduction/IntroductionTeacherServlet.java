package com.controller.Introduction;

import com.entity.Lab;
import com.entity.Teacher;
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
import java.util.ArrayList;
import java.util.List;

@WebServlet("/introductionTeacher")
public class IntroductionTeacherServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int tid=Integer.parseInt(req.getParameter("tid"));
        String type=req.getParameter("type");//type代表职称

        if(tid!=0){//tid不等于0，代表要查询具体教师信息
            Teacher teacher=ServiceFactory.getTeacherService().getTeacherById(type,tid);
            req.setAttribute("teacher",teacher);
        }
        //默认的左侧教师导航栏
        List<Teacher> teachers=ServiceFactory.getTeacherService().listTeachers(type);
        req.setAttribute("teachers",teachers);


        List<Lab> labs=ServiceFactory.getLabService().listLabs();
        req.setAttribute("tid",tid);//把tid传过去，如果tid等于0，代表是当前职称的首页
        req.setAttribute("type",type);//传给介绍页，代表职称

        //req.setAttribute("labs",labs);本来是保证教师页面有labs对象的，现在把labs塞到了session里，不用这个了
        req.getRequestDispatcher("/WEB-INF/pages/introductionTeachers.jsp").forward(req,resp);
    }
}
