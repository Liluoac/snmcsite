package com.snmcsite.util;

import org.springframework.web.multipart.MultipartFile;

import java.io.*;

public class UploadFile {
    private static FileOutputStream fileOutputStream;
    private static BufferedOutputStream out;

    public static void uploadFile(MultipartFile uploadFile,String path) throws IOException {
        try {
            File file=new File(path+"download");
            if (!file.exists()){
                file.mkdir();
            }
            String fileName=uploadFile.getOriginalFilename();
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
    }
}
