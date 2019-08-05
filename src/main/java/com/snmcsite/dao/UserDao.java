package com.snmcsite.dao;

import com.snmcsite.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {
    User getUser(String account);

    void insertUser(@Param("user") User user);

    void changePass(@Param("user") User user);
}
