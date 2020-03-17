package com.cqnu.bookEX.model.shop;

import java.sql.Date;

public class ShopModel {
    private Long shopid;

    private String shopname;

    private String shoplogo;

    private String paypic1;

    private String paypic2;

    private String shopmsg;

    private String shoptell;

    private String shoptel;

    private Long shopadmin1;

    private Long shopadmin2;

    private Long shopadmin3;

    private Integer deleted;

    private Long createdBy;

    private Date createdtime;

    private Long updatedBy;

    private Date updatedtime;

    public Long getShopid() {
        return shopid;
    }

    public void setShopid(Long shopid) {
        this.shopid = shopid;
    }

    public String getShopname() {
        return shopname;
    }

    public void setShopname(String shopname) {
        this.shopname = shopname == null ? null : shopname.trim();
    }

    public String getShoplogo() {
        return shoplogo;
    }

    public void setShoplogo(String shoplogo) {
        this.shoplogo = shoplogo == null ? null : shoplogo.trim();
    }

    public String getPaypic1() {
        return paypic1;
    }

    public void setPaypic1(String paypic1) {
        this.paypic1 = paypic1 == null ? null : paypic1.trim();
    }

    public String getPaypic2() {
        return paypic2;
    }

    public void setPaypic2(String paypic2) {
        this.paypic2 = paypic2 == null ? null : paypic2.trim();
    }

    public String getShopmsg() {
        return shopmsg;
    }

    public void setShopmsg(String shopmsg) {
        this.shopmsg = shopmsg == null ? null : shopmsg.trim();
    }

    public String getShoptell() {
        return shoptell;
    }

    public void setShoptell(String shoptell) {
        this.shoptell = shoptell == null ? null : shoptell.trim();
    }

    public String getShoptel() {
        return shoptel;
    }

    public void setShoptel(String shoptel) {
        this.shoptel = shoptel == null ? null : shoptel.trim();
    }

    public Long getShopadmin1() {
        return shopadmin1;
    }

    public void setShopadmin1(Long shopadmin1) {
        this.shopadmin1 = shopadmin1;
    }

    public Long getShopadmin2() {
        return shopadmin2;
    }

    public void setShopadmin2(Long shopadmin2) {
        this.shopadmin2 = shopadmin2;
    }

    public Long getShopadmin3() {
        return shopadmin3;
    }

    public void setShopadmin3(Long shopadmin3) {
        this.shopadmin3 = shopadmin3;
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
		return "ShopModel [shopid=" + shopid + ", shopname=" + shopname + ", shoplogo=" + shoplogo + ", paypic1="
				+ paypic1 + ", paypic2=" + paypic2 + ", shopmsg=" + shopmsg + ", shoptell=" + shoptell + ", shoptel="
				+ shoptel + ", shopadmin1=" + shopadmin1 + ", shopadmin2=" + shopadmin2 + ", shopadmin3=" + shopadmin3
				+ ", deleted=" + deleted + ", createdBy=" + createdBy + ", createdtime=" + createdtime + ", updatedBy="
				+ updatedBy + ", updatedtime=" + updatedtime + "]";
	}
    
}