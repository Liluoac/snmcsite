package com.snmcsite.dao;

import com.snmcsite.entity.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {
    User getUser(Integer userId);
}
