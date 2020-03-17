package com.cqnu.bookEX.model.messageboard;

import java.util.Date;

public class MessageBoardModel {
    private Long msgid;

    private Long userid;

    private String bookname;
    
    private String bookauthor;

    private String msgcontent;

    private Integer msgstatus;

    private Integer deleted;

    private Long createdBy;

    private Date createdtime;

    private Long updatedBy;

    private Date updatedtime;
    
    private String username;
    
    
    
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getBookauthor() {
		return bookauthor;
	}

	public void setBookauthor(String bookauthor) {
		this.bookauthor = bookauthor;
	}

	public Long getMsgid() {
        return msgid;
    }

    public void setMsgid(Long msgid) {
        this.msgid = msgid;
    }

    public Long getUserid() {
        return userid;
    }

    public void setUserid(Long userid) {
        this.userid = userid;
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname == null ? null : bookname.trim();
    }

    public String getMsgcontent() {
        return msgcontent;
    }

    public void setMsgcontent(String msgcontent) {
        this.msgcontent = msgcontent == null ? null : msgcontent.trim();
    }

    public Integer getMsgstatus() {
        return msgstatus;
    }

    public void setMsgstatus(Integer msgstatus) {
        this.msgstatus = msgstatus;
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
		return "MessageBoardModel [msgid=" + msgid + ", userid=" + userid + ", bookname=" + bookname + ", bookauthor="
				+ bookauthor + ", msgcontent=" + msgcontent + ", msgstatus=" + msgstatus + ", deleted=" + deleted
				+ ", createdBy=" + createdBy + ", createdtime=" + createdtime + ", updatedBy=" + updatedBy
				+ ", updatedtime=" + updatedtime + ", username=" + username + "]";
	}
    
    
}