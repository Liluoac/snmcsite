package com.snmcsite.controller;

import java.util.List;

import com.snmcsite.entity.News;
import com.snmcsite.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NewsController {
    @Autowired
    private NewsService newsService;

    @RequestMapping("newsDetail")
    public String newsDetail(Integer newsId, Model model) {
        News news = newsService.getNews(newsId);
        model.addAttribute("news", news);
        return "news-detail";
    }

    @RequestMapping("getNewsTypeOne")
    public ModelAndView getNewsTypeOne(int page) {
        ModelAndView mv = new ModelAndView("news");
        List<News> map = newsService.getNewsTypeOne();
        int totalNews = map.size();
        int totalPage = totalNews%10>0?totalNews/10+1:totalNews/10;

        mv.addObject("curPage",1);
        mv.addObject("prePage",page-1>0?page-1:1);
        mv.addObject("nextPage",page<totalPage?page+1:page);
        mv.addObject("lastPage",totalPage);
        mv.addObject("page",page);

        int first=(page-1)*10;
        int last=page*10>totalNews?totalNews:page*10-1;
        List<News> newMap=map.subList(first,last);

        mv.addObject("map", newMap);
        return mv;
    }

    @RequestMapping("getNewsTypeTwo")
    public ModelAndView getNewsTypeTwo(int page) {
        ModelAndView mv = new ModelAndView("news-notice");
        List<News> map = newsService.getNewsTypeTwo();

        int totalNews = map.size();
        int totalPage = totalNews%10>0?totalNews/10+1:totalNews/10;

        mv.addObject("curPage",1);
        mv.addObject("prePage",page-1>0?page-1:1);
        mv.addObject("nextPage",page<totalPage?page+1:page);
        mv.addObject("lastPage",totalPage);
        mv.addObject("page",page);

        int first=(page-1)*10;
        int last=page*10>totalNews?totalNews:page*10-1;
        List<News> newMap=map.subList(first,last);

        mv.addObject("map", newMap);
        return mv;

    }
}
