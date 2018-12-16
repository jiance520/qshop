package com.entity;

public class Os {
    private Long osid;

    private Object name;

    private String remark;

    public Long getOsid() {
        return osid;
    }

    public void setOsid(Long osid) {
        this.osid = osid;
    }

    public Object getName() {
        return name;
    }

    public void setName(Object name) {
        this.name = name;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}