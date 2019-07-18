package com.snmcsite.service;

import com.snmcsite.entity.User;

public interface UserService {
    User getUser(String account);

    void insertUser(User user);
}
