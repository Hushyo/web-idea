package com.filter;

import com.entity.User;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebFilter("/*")
public class EncodingFilter extends HttpFilter {
    private List<String> excludes= List.of("/home","/login","/introductionEmploy",
            "/introductionTeacher","/announciation","/introductionLab","/introductionSelf");
    @Override
    public void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {
        req.setCharacterEncoding("UTF-8");
        res.setCharacterEncoding("UTF-8");
       for(String e:excludes){
           if(e.equals(req.getServletPath())){
               chain.doFilter(req,res);
               return;
           }
       }
        User user=(User)req.getSession().getAttribute("user");

        if(req.getServletPath().equals("/#")){
            res.sendRedirect(req.getContextPath() + "/home");
        }
        if(user!=null){
            chain.doFilter(req,res);
        }
        else {
            if (req.getServletPath().endsWith(".png") || req.getServletPath().endsWith(".jpg")) {
                chain.doFilter(req, res);}
             else{
                    res.sendRedirect(req.getContextPath() + "/home");
                }
        }
    }
}
