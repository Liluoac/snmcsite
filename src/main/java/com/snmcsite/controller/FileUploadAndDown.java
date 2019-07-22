package com.snmcsite.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("file")
public class FileUploadAndDown {
    @RequestMapping("toUploadFile")
    public String toUploadFile(){
        return "fileUpload";
    }

    @RequestMapping(value = "uploadFile", method = RequestMethod.POST)
    public String uploadFile(@Param("uploadFile") MultipartFile uploadFile,
                             @Param("uploadFileName") String uploadFileName) {    //参数名字必须和jsp文件中的name名字一致
        System.out.println(uploadFileName);
        System.out.println(uploadFile);
        return "uploadFile";
    }
}
