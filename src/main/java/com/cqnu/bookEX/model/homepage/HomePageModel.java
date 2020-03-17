package com.cqnu.bookEX.model.homepage;

import java.util.Date;

public class HomePageModel {
    private Long hmid;

    private String pic1;

    private String title1;

    private String msg1;

    private String pic2;

    private String title2;

    private String msg2;

    private String pic3;

    private String title3;

    private String msg3;

    private String motto;

    private String author;

    private Integer deleted;

    private Long createdBy;

    private Date createdtime;

    private Long updatedBy;

    private Date updatedtime;

    public Long getHmid() {
        return hmid;
    }

    public void setHmid(Long hmid) {
        this.hmid = hmid;
    }

    public String getPic1() {
        return pic1;
    }

    public void setPic1(String pic1) {
        this.pic1 = pic1 == null ? null : pic1.trim();
    }

    public String getTitle1() {
        return title1;
    }

    public void setTitle1(String title1) {
        this.title1 = title1 == null ? null : title1.trim();
    }

    public String getMsg1() {
        return msg1;
    }

    public void setMsg1(String msg1) {
        this.msg1 = msg1 == null ? null : msg1.trim();
    }

    public String getPic2() {
        return pic2;
    }

    public void setPic2(String pic2) {
        this.pic2 = pic2 == null ? null : pic2.trim();
    }

    public String getTitle2() {
        return title2;
    }

    public void setTitle2(String title2) {
        this.title2 = title2 == null ? null : title2.trim();
    }

    public String getMsg2() {
        return msg2;
    }

    public void setMsg2(String msg2) {
        this.msg2 = msg2 == null ? null : msg2.trim();
    }

    public String getPic3() {
        return pic3;
    }

    public void setPic3(String pic3) {
        this.pic3 = pic3 == null ? null : pic3.trim();
    }

    public String getTitle3() {
        return title3;
    }

    public void setTitle3(String title3) {
        this.title3 = title3 == null ? null : title3.trim();
    }

    public String getMsg3() {
        return msg3;
    }

    public void setMsg3(String msg3) {
        this.msg3 = msg3 == null ? null : msg3.trim();
    }

    public String getMotto() {
        return motto;
    }

    public void setMotto(String motto) {
        this.motto = motto == null ? null : motto.trim();
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author == null ? null : author.trim();
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
		return "HomePageModel [hmid=" + hmid + ", pic1=" + pic1 + ", title1=" + title1 + ", msg1=" + msg1 + ", pic2="
				+ pic2 + ", title2=" + title2 + ", msg2=" + msg2 + ", pic3=" + pic3 + ", title3=" + title3 + ", msg3="
				+ msg3 + ", motto=" + motto + ", author=" + author + ", deleted=" + deleted + ", createdBy=" + createdBy
				+ ", createdtime=" + createdtime + ", updatedBy=" + updatedBy + ", updatedtime=" + updatedtime + "]";
	}
    
}