package com.snmcsite.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class File {
    private int fileId;
    private String title;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date publishDate;
    private String author;
    private int typeOne;
    private String realName;
    private String path;
    private int count;

    @Override
    public String toString() {
        return "File{" +
                "fileId=" + fileId +
                ", title='" + title + '\'' +
                ", publishDate=" + publishDate +
                ", author='" + author + '\'' +
                ", typeOne=" + typeOne +
                ", realName='" + realName + '\'' +
                ", path='" + path + '\'' +
                ", count=" + count +
                '}';
    }

    public int getFileId() {
        return fileId;
    }

    public void setFileId(int fileId) {
        this.fileId = fileId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
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

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}
