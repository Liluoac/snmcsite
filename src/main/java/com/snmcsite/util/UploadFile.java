package com.snmcsite.util;

import java.io.*;

public class UploadFile {
    private static FileInputStream fileInputStream;
    private static BufferedInputStream bufferedInputStream;
    private static FileOutputStream fileOutputStream;
    private static BufferedOutputStream out;

    public static void uploadFile(String filePathName) throws IOException {
        try {
            int index = filePathName.lastIndexOf("\\");
            String fileName = filePathName.substring(index);
            fileInputStream = new FileInputStream("F:\\uploadFile\\ChromeSetup.exe");
            int size = fileInputStream.available();
            bufferedInputStream = new BufferedInputStream(fileInputStream);
            fileOutputStream = new FileOutputStream("F:\\uploadFile1\\ChromeSetup2.exe");
            out = new BufferedOutputStream(fileOutputStream);
            byte[] bytes = new byte[size];
            bufferedInputStream.read(bytes, 0, size);
            out.write(bytes);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            fileInputStream.close();
            bufferedInputStream.close();
            fileOutputStream.close();
            out.close();
        }
    }
}
