package com.snmcsite.service.impl;

import com.snmcsite.dao.FlowDao;
import com.snmcsite.entity.Flow;
import com.snmcsite.service.FlowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FlowServiceImpl implements FlowService {
    @Autowired
    private FlowDao flowDao;

    @Override
    public List<Flow> selectAll() {return flowDao.selectAll();}

    @Override
    public Flow getFlowById(int flowId) {return flowDao.getFlowById(flowId);}

    @Override
    public void editFlow(Flow flow) {flowDao.editFlow(flow);}
}
