package com.snmcsite.dao;

import com.snmcsite.entity.News;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NewsDao {
    News getNewsById(Integer newsId);

    List<News> selectAll();

    Integer newsCount();

    List<News> getNews();

    List<News> getNotice();

    void deleteNewsById(int newsId);

    void insertNews(@Param("news") News news);

    void editNews1(@Param("news") News news);

    void editNews2(@Param("news") News news);

    void addVisitor(int newsId);
}
