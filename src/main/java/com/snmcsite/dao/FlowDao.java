package com.snmcsite.dao;

import com.snmcsite.entity.Flow;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FlowDao {
    List<Flow> selectAll();

    Flow getFlowById(int flowId);

    void editFlow(@Param("flow") Flow flow);
}
