package com.service.impl;

import com.entity.New;
import com.entity.Notice;
import com.service.Imps.AnnounceService;
import com.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class AnnounceServiceImpl implements AnnounceService {
    @Override
    public List<New> listNews() {
        List<New> news=new ArrayList<>();

        String newsSql= "SELECT * FROM news ORDER BY publish_time DESC LIMIT 3";

        try(Connection conn= DataSourceUtils.getConnection();
            PreparedStatement newsps=conn.prepareStatement(newsSql);
            ResultSet newsRs=newsps.executeQuery()){
            while(newsRs.next()) {
                New nevv = new New(newsRs.getInt("id"),   newsRs.getObject("publish_time", LocalDateTime.class),
                        newsRs.getString("title"), newsRs.getString("content"));
                news.add(nevv);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return  news;
    }

    public List<New> listAllNews() {
        List<New> news=new ArrayList<>();

        String newsSql= "SELECT * FROM news ORDER BY publish_time DESC";

        try(Connection conn= DataSourceUtils.getConnection();
            PreparedStatement newsps=conn.prepareStatement(newsSql);
            ResultSet newsRs=newsps.executeQuery()){
            while(newsRs.next()) {
                New nevv = new New(newsRs.getInt("id"),   newsRs.getObject("publish_time", LocalDateTime.class),
                        newsRs.getString("title"), newsRs.getString("content"));
                news.add(nevv);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return  news;
    }

    @Override
    public List<Notice> listNotices() {
        List<Notice> notices=new ArrayList<>();
        String noticesSql= "SELECT * FROM notices ORDER BY publish_time DESC LIMIT 3";
        try(Connection conn= DataSourceUtils.getConnection();
            PreparedStatement noticeps=conn.prepareStatement(noticesSql);
            ResultSet noticesRs=noticeps.executeQuery()){
            while(noticesRs.next()){
                Notice notice = new Notice(noticesRs.getInt("id"), noticesRs.getObject("publish_time", LocalDateTime.class),
                        noticesRs.getString("title"), noticesRs.getString("content"));
                notices.add(notice);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return notices;
    }
    @Override
    public List<Notice> listAllNotices() {
        List<Notice> notices=new ArrayList<>();
        String noticesSql= "SELECT * FROM notices ORDER BY publish_time DESC";
        try(Connection conn= DataSourceUtils.getConnection();
            PreparedStatement noticeps=conn.prepareStatement(noticesSql);
            ResultSet noticesRs=noticeps.executeQuery()){
            while(noticesRs.next()){
                Notice notice = new Notice(noticesRs.getInt("id"), noticesRs.getObject("publish_time", LocalDateTime.class),
                        noticesRs.getString("title"), noticesRs.getString("content"));
                notices.add(notice);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return notices;
    }
}
