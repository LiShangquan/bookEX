package com.cqnu.bookEX.model.bookpicture;

import java.util.Date;

public class BookPictureModel {
    private Long isbn;

    private String bookpicture1;

    private String bookpicture2;

    private String bookpicture3;

    private String bookpicture4;

    private Integer deleted;

    private Long createdBy;

    private Date createdtime;

    private Long updatedBy;

    private Date updatedtime;

    public Long getIsbn() {
        return isbn;
    }

    public void setIsbn(Long isbn) {
        this.isbn = isbn;
    }

    public String getBookpicture1() {
        return bookpicture1;
    }

    public void setBookpicture1(String bookpicture1) {
        this.bookpicture1 = bookpicture1 == null ? null : bookpicture1.trim();
    }

    public String getBookpicture2() {
        return bookpicture2;
    }

    public void setBookpicture2(String bookpicture2) {
        this.bookpicture2 = bookpicture2 == null ? null : bookpicture2.trim();
    }

    public String getBookpicture3() {
        return bookpicture3;
    }

    public void setBookpicture3(String bookpicture3) {
        this.bookpicture3 = bookpicture3 == null ? null : bookpicture3.trim();
    }

    public String getBookpicture4() {
        return bookpicture4;
    }

    public void setBookpicture4(String bookpicture4) {
        this.bookpicture4 = bookpicture4 == null ? null : bookpicture4.trim();
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
		return "BookPictureModel [isbn=" + isbn + ", bookpicture1=" + bookpicture1 + ", bookpicture2=" + bookpicture2
				+ ", bookpicture3=" + bookpicture3 + ", bookpicture4=" + bookpicture4 + ", deleted=" + deleted
				+ ", createdBy=" + createdBy + ", createdtime=" + createdtime + ", updatedBy=" + updatedBy
				+ ", updatedtime=" + updatedtime + "]";
	}
    
}