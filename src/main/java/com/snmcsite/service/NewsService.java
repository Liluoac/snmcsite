package com.snmcsite.service;

import com.snmcsite.entity.News;

import java.util.List;

public interface NewsService {
    News getNews(int newsId);

    List<News> selectAll();

    Integer newsCount();

    List<News> getNewsTypeOne();

    List<News> getNewsTypeTwo();

    void deleteNewsById(int newsId);
}
