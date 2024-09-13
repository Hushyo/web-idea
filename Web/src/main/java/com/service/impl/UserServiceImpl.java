package com.service.impl;

import com.entity.User;
import com.service.Imps.UserService;
import com.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class UserServiceImpl implements UserService {

    @Override
    public List<User> listUsers() {
        List<User> users=new ArrayList<>();
        String sql="select * from user";
        try (Connection conn= DataSourceUtils.getConnection();
            PreparedStatement ps=conn.prepareStatement(sql);
             ResultSet rs=ps.executeQuery()){
            while(rs.next()){
                User user= new User(rs.getInt("id"),rs.getString("name"),
                        rs.getObject("insert_time", LocalDateTime.class));
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }

    @Override
    public void addUser(String name) {
    String sql="insert into user(name) values (?)";
    try (Connection coon=DataSourceUtils.getConnection();
    PreparedStatement ps = coon.prepareStatement(sql)){
        ps.setString(1,name);
        ps.executeUpdate();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    }

    @Override
    public User getUser(int id) {
    User user=null;
    String sql="select * from user where id=?";
    try (Connection coon=DataSourceUtils.getConnection();
    PreparedStatement ps=coon.prepareStatement(sql);
    ){
        ps.setInt(1,id);
        try (ResultSet rs=ps.executeQuery()){
            while (rs.next()){
                user=new User(rs.getInt("id"),rs.getString("name"),rs.getObject("insert_time",LocalDateTime.class));
            }
        }

    } catch (SQLException e) {
        e.printStackTrace();
    }
    return user;
    }
}
