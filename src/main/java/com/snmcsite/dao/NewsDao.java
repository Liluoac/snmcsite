package com.snmcsite.dao;

import com.snmcsite.entity.News;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NewsDao {
    News getNews(int newsId);

    List<News> selectAll();

    Integer newsCount();
}
