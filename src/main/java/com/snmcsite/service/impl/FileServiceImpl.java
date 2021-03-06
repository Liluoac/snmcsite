package com.snmcsite.service.impl;

import com.snmcsite.dao.FileDao;
import com.snmcsite.entity.File;
import com.snmcsite.service.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FileServiceImpl implements FileService {
    @Autowired
    private FileDao fileDao;

    @Override
    public File getFile(int fileId) {
        return fileDao.getFile(fileId);
    }

    @Override
    public List<File> getFileByType(int typeOne) {
        return fileDao.getFileByType(typeOne);
    }

    @Override
    public List<File> selectAll() {
        return fileDao.selectAll();
    }

    @Override
    public void deleteFileById(int fileId) {
        fileDao.deleteFileById(fileId);
    }

    @Override
    public void uploadFile(File file){fileDao.uploadFile(file);}

    @Override
    public void addVisitor(int fileId){fileDao.addVisitor(fileId);}
}
