package com.snmcsite.controller;

import com.snmcsite.util.UploadFile;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.*;

@Controller
@RequestMapping("file")
public class FileUploadAndDownController {
    @Autowired
    private HttpServletRequest request;

    @RequestMapping("toUploadFile")
    public String toUploadFile() {
        return "fileUpload";
    }

    @RequestMapping(value = "uploadFile", method = RequestMethod.POST)
    public String uploadFile(@Param("uploadFile") MultipartFile uploadFile) throws IOException {    //参数名字必须和jsp文件中的name名字一致
        String path=request.getSession().getServletContext().getRealPath("/");

        UploadFile.uploadFile(uploadFile, path);
        return "uploadFile";
    }
}
