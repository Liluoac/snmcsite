package com.snmcsite.service;

import com.snmcsite.entity.Flow;

import java.util.List;

public interface FlowService {
    List<Flow> selectAll();

    Flow getFlowById(int flowId);

    void editFlow(Flow flow);
}
