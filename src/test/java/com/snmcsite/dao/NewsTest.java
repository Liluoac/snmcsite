package com.snmcsite.dao;

import com.snmcsite.BaseTest;
import com.snmcsite.service.NewsService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class NewsTest extends BaseTest {
    @Autowired
    private NewsService newsService;

    @Test
    public void test() {
        System.out.println(newsService.newsCount());
    }
}
