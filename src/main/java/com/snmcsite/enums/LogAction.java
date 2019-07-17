package com.snmcsite.enums;

public enum  LogAction {
    EDIT("编辑"), ADD("新增"), UPLOAD("上传"), DELETE("删除"), LOGIN("登陆"), LOGOUT("注销");

    private String action;

    LogAction(String action){
        this.action=action;
    }

    public String getAction(){
        return action;
    }

    public void setAction(String action){
        this.action=action;
    }
}
