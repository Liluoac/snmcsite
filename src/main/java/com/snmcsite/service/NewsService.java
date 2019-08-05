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

    void insertNews(News news);

    void editNews1(News news);

    void editNews2(News news);
}
