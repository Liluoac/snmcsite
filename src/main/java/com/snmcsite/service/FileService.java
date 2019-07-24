package com.snmcsite.service;

import com.snmcsite.entity.File;

import java.util.ArrayList;

public interface FileService {
    File getFile(int fileId);

    ArrayList<File> getFileByType(int typeOne);
}
