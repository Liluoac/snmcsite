package com.snmcsite.dao;

import com.snmcsite.entity.News;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NewsDao {
    News getNews(Integer newsId);

    List<News> selectAll();

    Integer newsCount();

    List<News> getNewsTypeOne();

    List<News> getNewsTypeTwo();

    void deleteNewsById(int newsId);
}
