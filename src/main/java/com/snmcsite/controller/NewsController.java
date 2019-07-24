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
    public ModelAndView getNewsTypeOne() {
        ModelAndView mv = new ModelAndView("news");
        List<News> map = newsService.getNewsTypeOne();
        mv.addObject("map", map);
        return mv;
    }

    @RequestMapping("getNewsTypeTwo")
    public ModelAndView getNewsTypeTwo() {
        ModelAndView mv = new ModelAndView("news-notice");
        List<News> map = newsService.getNewsTypeTwo();
        mv.addObject("map", map);
        return mv;

    }
}
