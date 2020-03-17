package com.cqnu.bookEX.model.common;

public class CategoryModel {
	private int cid;
	private String description;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public String toString() {
		return "WornLevelModel [cid=" + cid + ", description=" + description + "]";
	}
	
	
}
