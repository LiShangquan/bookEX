package com.cqnu.bookEX.model.attention;

import java.util.Date;

public class AttentionModel {
    private Long atid;

    private Long focuser;

    private Long focused;

    private Integer deleted;

    private Long createdBy;

    private Date createdtime;

    private Long updatedBy;

    private Date updatedtime;

    public Long getAtid() {
        return atid;
    }

    public void setAtid(Long atid) {
        this.atid = atid;
    }

    public Long getFocuser() {
        return focuser;
    }

    public void setFocuser(Long focuser) {
        this.focuser = focuser;
    }

    public Long getFocused() {
        return focused;
    }

    public void setFocused(Long focused) {
        this.focused = focused;
    }

    public Integer getDeleted() {
        return deleted;
    }

    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
    }

    public Long getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(Long createdBy) {
        this.createdBy = createdBy;
    }

    public Date getCreatedtime() {
        return createdtime;
    }

    public void setCreatedtime(Date createdtime) {
        this.createdtime = createdtime;
    }

    public Long getUpdatedBy() {
        return updatedBy;
    }

    public void setUpdatedBy(Long updatedBy) {
        this.updatedBy = updatedBy;
    }

    public Date getUpdatedtime() {
        return updatedtime;
    }

    public void setUpdatedtime(Date updatedtime) {
        this.updatedtime = updatedtime;
    }

	@Override
	public String toString() {
		return "AttentionModel [atid=" + atid + ", focuser=" + focuser + ", focused=" + focused + ", deleted=" + deleted
				+ ", createdBy=" + createdBy + ", createdtime=" + createdtime + ", updatedBy=" + updatedBy
				+ ", updatedtime=" + updatedtime + "]";
	}
    
}