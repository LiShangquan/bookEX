package com.cqnu.bookEX.model.tradingrecord;

import java.util.Date;

public class TradingrecordModel {
    private Long recordid;

    private Long orderid;

    private Long buyerid;

    private Long sellerid;

    private Long isbn;

    private Integer rbookcount;

    private String remark;

    private Integer deleted;

    private Long createdBy;

    private Date createdtime;

    private Long updatedBy;

    private Date updatedtime;

    public Long getRecordid() {
        return recordid;
    }

    public void setRecordid(Long recordid) {
        this.recordid = recordid;
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

    public Integer getRbookcount() {
        return rbookcount;
    }

    public void setRbookcount(Integer rbookcount) {
        this.rbookcount = rbookcount;
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

	@Override
	public String toString() {
		return "TradingrecordModel [recordid=" + recordid + ", orderid=" + orderid + ", buyerid=" + buyerid
				+ ", sellerid=" + sellerid + ", isbn=" + isbn + ", rbookcount=" + rbookcount + ", remark=" + remark
				+ ", deleted=" + deleted + ", createdBy=" + createdBy + ", createdtime=" + createdtime + ", updatedBy="
				+ updatedBy + ", updatedtime=" + updatedtime + "]";
	}
    
}