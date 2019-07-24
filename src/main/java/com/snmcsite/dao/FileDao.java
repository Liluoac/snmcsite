package com.snmcsite.dao;

import com.snmcsite.entity.File;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface FileDao {
    File getFile(int fileId);

    ArrayList<File> getFileByType(int typeOne);
}
