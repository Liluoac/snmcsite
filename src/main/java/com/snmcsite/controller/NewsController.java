package com.snmcsite.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.snmcsite.entity.News;
import com.snmcsite.entity.User;
import com.snmcsite.service.NewsService;
import com.snmcsite.util.UploadFile;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class NewsController {
    @Autowired
    private NewsService newsService;

    @Autowired
    private HttpServletRequest request;

    @RequestMapping("newsDetail")
    public String newsDetail(Integer newsId, Model model) {
        News news = newsService.getNewsById(newsId);
        model.addAttribute("news", news);
        return "news-detail";
    }

    @RequestMapping("getNews")
    public ModelAndView getNews(int page) {
        ModelAndView mv = new ModelAndView("news");
        List<News> map = newsService.getNews();
        int totalNews = map.size();
        int totalPage = totalNews%10>0?totalNews/10+1:totalNews/10;

        mv.addObject("curPage",1);
        mv.addObject("prePage",page-1>0?page-1:1);
        mv.addObject("nextPage",page<totalPage?page+1:page);
        mv.addObject("lastPage",totalPage);
        mv.addObject("page",page);

        int first=(page-1)*10;
        int last=page*10>totalNews?totalNews:page*10;
        List<News> newMap=map.subList(first,last);

        mv.addObject("map", newMap);
        return mv;
    }

    @RequestMapping("getNotice")
    public ModelAndView getNotice(int page) {
        ModelAndView mv = new ModelAndView("news-notice");
        List<News> map = newsService.getNotice();

        int totalNews = map.size();
        int totalPage = totalNews%10>0?totalNews/10+1:totalNews/10;

        mv.addObject("curPage",1);
        mv.addObject("prePage",page-1>0?page-1:1);
        mv.addObject("nextPage",page<totalPage?page+1:page);
        mv.addObject("lastPage",totalPage);
        mv.addObject("page",page);

        int first=(page-1)*10;
        int last=page*10>totalNews?totalNews:page*10;
        List<News> newMap=map.subList(first,last);

        mv.addObject("map", newMap);
        return mv;

    }

    @RequestMapping("doAddNews")
    public String doAddNews(News news,@Param("uploadFile") MultipartFile uploadFile)throws IOException{
        news.setImageName("/newsImage/default.jpg");
        if (!uploadFile.getOriginalFilename().isEmpty()) {
            String path = request.getSession().getServletContext().getRealPath("/");
            news.setImageName("/newsImage/"+UploadFile.uploadImg(uploadFile, path));
        }else{
            Pattern p_img = Pattern.compile("<(img|IMG)(.*?)(/>|></img>|>)");
            Matcher m_img = p_img.matcher(news.getContent());
            if (m_img.find()) {
                //获取到匹配的<img />标签中的内容
                String str_img = m_img.group(2);

                //开始匹配<img />标签中的src
                Pattern p_src = Pattern.compile("(src|SRC)=(\"|\')(.*?)(\"|\')");
                Matcher m_src = p_src.matcher(str_img);
                if (m_src.find()) {
                    String str_src = m_src.group(3);
                    news.setImageName(str_src);
                }
                //结束匹配<img />标签中的src
            }
        }

        news.setTypeOne(1);
        news.setTypeTwo(0);
        newsService.insertNews(news);

        return "redirect:/admin/toNews";
    }

    @RequestMapping("doEditNews")
    public String doEditNews(int newsId,@Param("uploadFile") MultipartFile uploadFile,News news)throws IOException {
        news.setImageName("");
        if (!uploadFile.getOriginalFilename().isEmpty()) {
            String path = request.getSession().getServletContext().getRealPath("/");
            news.setImageName(UploadFile.uploadImg(uploadFile, path));
        }else{
            Pattern p_img = Pattern.compile("<(img|IMG)(.*?)(/>|></img>|>)");
            Matcher m_img = p_img.matcher(news.getContent());
            boolean result_img = m_img.find();
            if (result_img) {
                    //获取到匹配的<img />标签中的内容
                    String str_img = m_img.group(2);

                    //开始匹配<img />标签中的src
                    Pattern p_src = Pattern.compile("(src|SRC)=(\"|\')(.*?)(\"|\')");
                    Matcher m_src = p_src.matcher(str_img);
                    if (m_src.find()) {
                        String str_src = m_src.group(3);
                        news.setImageName(str_src);
                    }
                    //结束匹配<img />标签中的src
            }
        }

        news.setNewsId(newsId);

        if (news.getImageName().equals("")){
            newsService.editNews1(news);
        }else{
            newsService.editNews2(news);
        }

        return "redirect:/admin/toNews";
    }


    @RequestMapping("doAddNotice")
    public String doAddNotice(News news){
        news.setImageName("");
        news.setTypeOne(2);
        news.setTypeTwo(0);
        User user = (User) request.getSession().getAttribute("user");
        news.setAuthor(user.getAccount());
        news.setPublishDate(new Date());

        newsService.insertNews(news);

        return "redirect:/admin/toNotice";
    }

    @RequestMapping("doEditNotice")
    public String doEditNotice(int newsId,News news){
        news.setNewsId(newsId);
        newsService.editNews1(news);
        return "redirect:/admin/toNotice";
    }
}
