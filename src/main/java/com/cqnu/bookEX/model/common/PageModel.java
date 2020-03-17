package com.cqnu.bookEX.model.common;

public class PageModel {
	
	private int recordcount;//记录总数
	private int pagenow;//当前页码
	private int pagesize;//每页显示数量
	private int pagecount;//总页数
	private int recordnow;//记录开始处
	public int getRecordcount() {
		return recordcount;
	}
	public void setRecordcount(int recordcount) {
		this.recordcount = recordcount;
	}
	public int getPagenow() {
		return pagenow;
	}
	public void setPagenow(int pagenow) {
		this.pagenow = pagenow;
	}
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}
	public int getPagecount() {
		return pagecount;
	}
	public void setPagecount() {
		this.pagecount=recordcount%pagesize==0 ? recordcount%pagesize : recordcount%pagesize+1;
	}
	
	public int getRecordnow() {
		return recordnow;
	}
	public void setRecordnow() {
		this.recordnow=(pagenow-1)*pagesize;
	}

	@Override
	public String toString() {
		return "PageModel [recordcount=" + recordcount + ", pagenow=" + pagenow + ", pagesize=" + pagesize
				+ ", pagecount=" + pagecount + ", recordnow=" + recordnow + "]";
	}
	
	
}
