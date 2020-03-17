package com.cqnu.bookEX.model.leavemessage;

import java.util.Date;

public class LeaveMessageModel {
	private Long lmsgid;

	private Long leaverid;

	private Long repeatid;

	private String lmsgcontent;

	private Integer lmsgstatus;

	private Integer deleted;

	private Long createdBy;

	private Date createdtime;

	private Long updatedBy;

	private Date updatedtime;

	public Long getLmsgid() {
		return lmsgid;
	}

	public void setLmsgid(Long lmsgid) {
		this.lmsgid = lmsgid;
	}

	public Long getLeaverid() {
		return leaverid;
	}

	public void setLeaverid(Long leaverid) {
		this.leaverid = leaverid;
	}

	public Long getRepeatid() {
		return repeatid;
	}

	public void setRepeatid(Long repeatid) {
		this.repeatid = repeatid;
	}

	public String getLmsgcontent() {
		return lmsgcontent;
	}

	public void setLmsgcontent(String lmsgcontent) {
		this.lmsgcontent = lmsgcontent == null ? null : lmsgcontent.trim();
	}

	public Integer getLmsgstatus() {
		return lmsgstatus;
	}

	public void setLmsgstatus(Integer lmsgstatus) {
		this.lmsgstatus = lmsgstatus;
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
		return "LeaveMessageModel [lmsgid=" + lmsgid + ", leaverid=" + leaverid + ", repeatid=" + repeatid
				+ ", lmsgcontent=" + lmsgcontent + ", lmsgstatus=" + lmsgstatus + ", deleted=" + deleted
				+ ", createdBy=" + createdBy + ", createdtime=" + createdtime + ", updatedBy=" + updatedBy
				+ ", updatedtime=" + updatedtime + "]";
	}
	
}