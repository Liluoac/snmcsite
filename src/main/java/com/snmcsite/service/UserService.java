package com.snmcsite.service;

import com.snmcsite.entity.User;

import java.util.List;

public interface UserService {
    User getUser(String account);

    int getUserNumByAccount(String account);

    User getUserById(int userId);

    void insertUser(User user);

    void updateUser(User user);

    void changePass(User user);

    List<User> selectAll();

    void deleteUserById(int userId);
}
