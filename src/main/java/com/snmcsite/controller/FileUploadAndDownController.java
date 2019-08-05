package com.snmcsite.controller;

import com.snmcsite.entity.User;
import com.snmcsite.util.UploadFile;
import com.snmcsite.entity.File;
import com.snmcsite.service.FileService;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUpload;
import org.apache.commons.fileupload.RequestContext;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.servlet.ServletRequestContext;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("file")
public class FileUploadAndDownController {
    @Autowired
    private HttpServletRequest request;

    @Autowired
    private FileService fileService;

    @RequestMapping(value = "uploadFile", method = RequestMethod.POST)
    public String uploadFile(@Param("uploadFile") MultipartFile uploadFile, int type) throws IOException {//参数名字必须和jsp文件中的name名字一致
        if (!uploadFile.getName().isEmpty()) {
            String path = request.getSession().getServletContext().getRealPath("/");


            String realName=UploadFile.uploadFile(uploadFile, path);

            File file = new File();

            User user = (User) request.getSession().getAttribute("user");
            file.setAuthor(user.getAccount());
            file.setPath(path + "download");
            file.setPublishDate(new Date());
            file.setTypeOne(type);
            file.setTitle(uploadFile.getOriginalFilename());
            file.setRealName(realName);

            fileService.uploadFile(file);
        }

        return "redirect:/admin/toFile";
    }



}
