package com.cqnu.bookEX.model.book;

import java.util.Date;

public class BookModel {
    private Long isbn;

    private String bookname;

    private String author;

    private String press;

    private Integer booktype;

    private Integer bookcount;

    private Integer nowcount;

    private Float bookprice;

    private Float pricenow;

    private Integer wornlevel;

    private String summary;

    private Integer deleted;

    private Long createdBy;

    private Date createdtime;

    private Long updatedBy;

    private Date updatedtime;
    
    private Long owner;
    
    private int ownertype;
    
    private String bookpic;
    
    public String getBookpic() {
		return bookpic;
	}

	public void setBookpic(String bookpic) {
		this.bookpic = bookpic;
	}

	public Long getOwner() {
		return owner;
	}

	public void setOwner(Long owner) {
		this.owner = owner;
	}

	public Long getIsbn() {
        return isbn;
    }

    public void setIsbn(Long isbn) {
        this.isbn = isbn;
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname == null ? null : bookname.trim();
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author == null ? null : author.trim();
    }

    public String getPress() {
        return press;
    }

    public void setPress(String press) {
        this.press = press == null ? null : press.trim();
    }

    public Integer getBooktype() {
        return booktype;
    }

    public void setBooktype(Integer booktype) {
        this.booktype = booktype;
    }

    public Integer getBookcount() {
        return bookcount;
    }

    public void setBookcount(Integer bookcount) {
        this.bookcount = bookcount;
    }

    public Integer getNowcount() {
        return nowcount;
    }

    public void setNowcount(Integer nowcount) {
        this.nowcount = nowcount;
    }

    public Float getBookprice() {
        return bookprice;
    }

    public void setBookprice(Float bookprice) {
        this.bookprice = bookprice;
    }

    public Float getPricenow() {
        return pricenow;
    }

    public void setPricenow(Float pricenow) {
        this.pricenow = pricenow;
    }

    public Integer getWornlevel() {
        return wornlevel;
    }

    public void setWornlevel(Integer wornlevel) {
        this.wornlevel = wornlevel;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary == null ? null : summary.trim();
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
     
    
	public int getOwnertype() {
		return ownertype;
	}

	public void setOwnertype(int ownertype) {
		this.ownertype = ownertype;
	}

	@Override
	public String toString() {
		return "BookModel [isbn=" + isbn + ", bookname=" + bookname + ", author=" + author + ", press=" + press
				+ ", booktype=" + booktype + ", bookcount=" + bookcount + ", nowcount=" + nowcount + ", bookprice="
				+ bookprice + ", pricenow=" + pricenow + ", wornlevel=" + wornlevel + ", summary=" + summary
				+ ", deleted=" + deleted + ", createdBy=" + createdBy + ", createdtime=" + createdtime + ", updatedBy="
				+ updatedBy + ", updatedtime=" + updatedtime + ", owner=" + owner + ", ownertype=" + ownertype
				+ ", bookpic=" + bookpic + "]";
	}

}