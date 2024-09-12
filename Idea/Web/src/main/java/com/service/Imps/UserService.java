package com.service.Imps;

import com.entity.User;

import java.util.List;

public interface UserService {
    public List<User> listUsers();

    public void addUser(String name);

    public User getUser(int id);
}
