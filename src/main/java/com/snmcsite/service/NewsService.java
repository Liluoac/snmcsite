package com.snmcsite.service;

import com.snmcsite.entity.News;

import java.util.List;

public interface NewsService {
    News getNewsById(int newsId);

    List<News> selectAll();

    Integer newsCount();

    List<News> getNews();

    List<News> getNotice();

    void deleteNewsById(int newsId);

    void insertNews(News news);

    void editNews1(News news);

    void editNews2(News news);

    void addVisitor(int newsId);
}
