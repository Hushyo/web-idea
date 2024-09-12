package com.service.impl;

import com.entity.Teacher;
import com.service.Imps.TeacherService;
import com.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TeacherServiceImpl implements TeacherService {
    @Override
    public List<Teacher> listTeachers(String type) {
        String sql="select * from "+type;
        List<Teacher> teachers=new ArrayList<>();
        try(Connection connection= DataSourceUtils.getConnection();
            PreparedStatement ps=connection.prepareStatement(sql);
            ResultSet rs=ps.executeQuery()) {

            while(rs.next()){
                Teacher teacher = new Teacher(rs.getInt("tid"),
                        rs.getString("tname"),
                        rs.getString("tintroduction"),
                        rs.getString("timg"));
                teachers.add(teacher);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return  teachers;
    }

    @Override
    public Teacher getTeacherById(String type, int id) {

        String sql="select * from "+type+" where tid=?";
        Teacher teacher=null;

        try(Connection connection= DataSourceUtils.getConnection();
            PreparedStatement ps=connection.prepareStatement(sql)){
            ps.setInt(1,id);
            try (ResultSet rs=ps.executeQuery()){
                if(rs.next()){
                    teacher = new Teacher(rs.getInt("tid"),
                            rs.getString("tname"),
                            rs.getString("tintroduction"),
                            rs.getString("timg"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return  teacher;
    }
}
