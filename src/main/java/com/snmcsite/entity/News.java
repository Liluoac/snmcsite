package com.snmcsite.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class News {
    private int newsId;
    private String title;
    private String content;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date publishDate;
    private String author;
    private int typeOne;
    private int typeTwo;
    private String imageName;

    @Override
    public String toString() {
        return "News{" +
                "newsId=" + newsId +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", publishDate=" + publishDate +
                ", author='" + author + '\'' +
                ", typeOne=" + typeOne +
                ", typeTwo=" + typeTwo +
                ", imageName='" + imageName + '\'' +
                '}';
    }

    public int getNewsId() {
        return newsId;
    }

    public void setNewsId(int newsId) {
        this.newsId = newsId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getPublishDate() {
        return publishDate;
    }

    public void setPublishDate(Date publishDate) {
        this.publishDate = publishDate;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getTypeOne() {
        return typeOne;
    }

    public void setTypeOne(int typeOne) {
        this.typeOne = typeOne;
    }

    public int getTypeTwo() {
        return typeTwo;
    }

    public void setTypeTwo(int typeTwo) {
        this.typeTwo = typeTwo;
    }

    public String getImageName() {
        return imageName;
    }

    public void setImageName(String imageName) {
        this.imageName = imageName;
    }
}
