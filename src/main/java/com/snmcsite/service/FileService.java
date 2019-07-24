package com.snmcsite.service;

import com.snmcsite.entity.File;

import java.util.List;

public interface FileService {
    File getFile(int fileId);

    List<File> getFileByType(int typeOne);
}
