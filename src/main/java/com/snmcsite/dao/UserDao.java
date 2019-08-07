package com.snmcsite.dao;

import com.snmcsite.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserDao {
    User getUser(String account);

    int getUserNumByAccount(String account);

    User getUserById(int userId);

    void insertUser(@Param("user") User user);

    void changePass(@Param("user") User user);

    void updateUser(@Param("user") User user);

    void deleteUserById(int userId);

    List<User> selectAll();
}
