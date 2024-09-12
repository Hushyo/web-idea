package com.filter;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebFilter("/*")
public class EncodingFilter extends HttpFilter {
    private List<String> allow = List.of("/index","/update","/getuser");
    @Override
    public void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {
        req.setCharacterEncoding("UTF-8");
        res.setCharacterEncoding("UTF-8");
        for(String a:allow){
            if(a.equals(req.getServletPath())){
                chain.doFilter(req,res);
                return;
            }
        }
        res.sendRedirect(req.getContextPath()+"/index");
    }
}
