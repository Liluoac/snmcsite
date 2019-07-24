package com.snmcsite.service;

import com.snmcsite.entity.News;

import java.util.ArrayList;

public interface NewsService {
    News getNews(int newsId);

    ArrayList<News> selectAll();

    Integer newsCount();

    ArrayList<News> getNewsTypeOne();

    ArrayList<News> getNewsTypeTwo();
}
