package com.snmcsite.dao;

import com.snmcsite.entity.File;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FileDao {
    File getFile(int fileId);

    List<File> getFileByType(int typeOne);
}
