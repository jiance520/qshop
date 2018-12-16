package com.entity;

public class Rom {
    private Long driveid;

    private Object drivename;

    private String parameter;

    private String remark;

    public Long getDriveid() {
        return driveid;
    }

    public void setDriveid(Long driveid) {
        this.driveid = driveid;
    }

    public Object getDrivename() {
        return drivename;
    }

    public void setDrivename(Object drivename) {
        this.drivename = drivename;
    }

    public String getParameter() {
        return parameter;
    }

    public void setParameter(String parameter) {
        this.parameter = parameter == null ? null : parameter.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}