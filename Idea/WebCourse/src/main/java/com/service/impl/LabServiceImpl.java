package com.service.impl;

import com.entity.Lab;
import com.service.Imps.LabService;
import com.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class LabServiceImpl implements LabService  {
    @Override
    public List<Lab> listLabs() {
        String sql="select * from labs";

        List<Lab> labs=new ArrayList<>();

        try (Connection connection= DataSourceUtils.getConnection();
             PreparedStatement ps = connection.prepareStatement(sql);
             ResultSet rs=ps.executeQuery()){

            while(rs.next()){
                Lab lab=new Lab(rs.getInt("lid"),rs.getString("lname"),
                        rs.getString("lintroduction"),rs.getObject("edit_time", LocalDateTime.class),
                        rs.getString("limg"));
                labs.add(lab);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return  labs;
    }
}
