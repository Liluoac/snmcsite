package com.snmcsite.entity;

public class Flow {
    private int flowId;
    private String title;
    private String content;

    @Override
    public String toString() {
        return "Flow{" +
                "flowId=" + flowId +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                '}';
    }

    public int getFlowId() {
        return flowId;
    }

    public void setFlowId(int flowId) {
        this.flowId = flowId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
