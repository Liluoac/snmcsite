package com.snmcsite.dao;

import com.snmcsite.entity.File;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FileDao {
    File getFile(int fileId);

    List<File> getFileByType(int typeOne);

    List<File> selectAll();

    void deleteFileById(int fileId);

    void uploadFile(@Param("file") File file);

    void addVisitor(int fileId);
}
