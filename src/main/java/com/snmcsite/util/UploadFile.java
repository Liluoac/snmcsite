package com.snmcsite.util;

import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;

public class UploadFile {
    private static FileOutputStream fileOutputStream;
    private static BufferedOutputStream out;

    public static String uploadFile(MultipartFile uploadFile,String path) throws IOException {
        String fileName="";
        try {
            File file=new File(path+"download");
            if (!file.exists()){
                file.mkdir();
            }
            // 上传的文件名
            String uploadName = uploadFile.getOriginalFilename();
            // 获取后缀名
            String[] strArray = uploadName.split("\\.");
            int suffixIndex = strArray.length - 1;
            String exe = strArray[suffixIndex];
            // 组装服务器文件名
            SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
            fileName = sdf.format(new Date());//服务器保存新文件名
            fileName = fileName + "." + exe;//文件名+后缀名
            byte[] bytes = uploadFile.getBytes();
            fileOutputStream = new FileOutputStream(file.getPath()+"\\"+fileName);
            out = new BufferedOutputStream(fileOutputStream);
            out.write(bytes);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            fileOutputStream.close();
            out.close();
        }

        return fileName;
    }

    public static String uploadImg(MultipartFile uploadFile,String path) throws IOException {
        String fileName="";
        try {
            File file=new File(path+"newsImage");
            if (!file.exists()){
                file.mkdir();
            }
            String uploadName = uploadFile.getOriginalFilename();
            // 获取后缀名
            String[] strArray = uploadName.split("\\.");
            int suffixIndex = strArray.length - 1;
            String exe = strArray[suffixIndex];
            // 组装服务器文件名
            SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
            fileName = sdf.format(new Date());//服务器保存新文件名
            fileName = fileName + "." + exe;//文件名+后缀名
            byte[] bytes = uploadFile.getBytes();
            fileOutputStream = new FileOutputStream(file.getPath()+"\\"+fileName);
            out = new BufferedOutputStream(fileOutputStream);
            out.write(bytes);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            fileOutputStream.close();
            out.close();
        }
        return fileName;
    }
}
