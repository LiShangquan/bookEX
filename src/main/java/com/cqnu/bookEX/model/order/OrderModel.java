package com.cqnu.bookEX.model.order;

import java.util.Date;

public class OrderModel {
    private Long orderid;

    private Long buyerid;

    private Long sellerid;

    private Long isbn;

    private Integer obookcount;

    private String remark;

    private Integer deleted;

    private Long createdBy;

    private Date createdtime;

    private Long updatedBy;

    private Date updatedtime;

    private int ostatus;
    
    private String gname;
    
    private String shopname;
    
    private String bookpic;
    
    private String author;
    
    private float price;
    
    private String buyername;
    
    
    public String getBuyername() {
		return buyername;
	}

	public void setBuyername(String buyername) {
		this.buyername = buyername;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getGname() {
		return gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public String getShopname() {
		return shopname;
	}

	public void setShopname(String shopname) {
		this.shopname = shopname;
	}

	public String getBookpic() {
		return bookpic;
	}

	public void setBookpic(String bookpic) {
		this.bookpic = bookpic;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Long getOrderid() {
        return orderid;
    }

    public void setOrderid(Long orderid) {
        this.orderid = orderid;
    }

    public Long getBuyerid() {
        return buyerid;
    }

    public void setBuyerid(Long buyerid) {
        this.buyerid = buyerid;
    }

    public Long getSellerid() {
        return sellerid;
    }

    public void setSellerid(Long sellerid) {
        this.sellerid = sellerid;
    }

    public Long getIsbn() {
        return isbn;
    }

    public void setIsbn(Long isbn) {
        this.isbn = isbn;
    }

    public Integer getObookcount() {
        return obookcount;
    }

    public void setObookcount(Integer obookcount) {
        this.obookcount = obookcount;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
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

	public int getOstatus() {
		return ostatus;
	}

	public void setOstatus(int ostatus) {
		this.ostatus = ostatus;
	}

	@Override
	public String toString() {
		return "OrderModel [orderid=" + orderid + ", buyerid=" + buyerid + ", sellerid=" + sellerid + ", isbn=" + isbn
				+ ", obookcount=" + obookcount + ", remark=" + remark + ", deleted=" + deleted + ", createdBy="
				+ createdBy + ", createdtime=" + createdtime + ", updatedBy=" + updatedBy + ", updatedtime="
				+ updatedtime + ", ostatus=" + ostatus + ", gname=" + gname + ", shopname=" + shopname + ", bookpic="
				+ bookpic + ", author=" + author + ", price=" + price + ", buyername=" + buyername + "]";
	}
}