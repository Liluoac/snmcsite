package com.snmcsite.dao;

import com.snmcsite.entity.News;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface NewsDao {
    News getNews(Integer newsId);

    ArrayList<News> selectAll();

    Integer newsCount();

    ArrayList<News> getNewsTypeOne();

    ArrayList<News> getNewsTypeTwo();
}
