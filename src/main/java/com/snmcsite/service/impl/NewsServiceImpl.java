package com.snmcsite.service.impl;

import com.snmcsite.dao.NewsDao;
import com.snmcsite.entity.News;
import com.snmcsite.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewsServiceImpl implements NewsService {
    @Autowired
    private NewsDao newsDao;

    @Override
    public News getNews(int newsId) {
        return newsDao.getNews(newsId);
    }

    @Override
    public List<News> selectAll() {
        return newsDao.selectAll();
    }

    @Override
    public Integer newsCount() {
        return newsDao.newsCount();
    }

    @Override
    public List<News> getNewsTypeOne() {
        return newsDao.getNewsTypeOne();
    }

    @Override
    public List<News> getNewsTypeTwo() {
        return newsDao.getNewsTypeTwo();
    }

}
