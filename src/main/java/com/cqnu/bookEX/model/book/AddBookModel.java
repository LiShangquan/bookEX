package com.cqnu.bookEX.model.book;

public class AddBookModel {
	
	private String bookname;	
	private String bookauthor;
	private String bookpress;
	private int booktype;
	private int bookcount;
	private float bookprice;
	private float bookpricenow;
	private int bookwornlevel;
	private String booksummary;
	private Long bookowner;
	private String bookpic;
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getBookauthor() {
		return bookauthor;
	}
	public void setBookauthor(String bookauthor) {
		this.bookauthor = bookauthor;
	}
	public String getBookpress() {
		return bookpress;
	}
	public void setBookpress(String bookpress) {
		this.bookpress = bookpress;
	}
	public int getBooktype() {
		return booktype;
	}
	public void setBooktype(int booktype) {
		this.booktype = booktype;
	}
	public int getBookcount() {
		return bookcount;
	}
	public void setBookcount(int bookcount) {
		this.bookcount = bookcount;
	}
	public float getBookprice() {
		return bookprice;
	}
	public void setBookprice(float bookprice) {
		this.bookprice = bookprice;
	}
	
	public float getBookpricenow() {
		return bookpricenow;
	}
	public void setBookpricenow(float bookpricenow) {
		this.bookpricenow = bookpricenow;
	}
	public int getBookwornlevel() {
		return bookwornlevel;
	}
	public void setBookwornlevel(int bookwornlevel) {
		this.bookwornlevel = bookwornlevel;
	}
	public String getBooksummary() {
		return booksummary;
	}
	public void setBooksummary(String booksummary) {
		this.booksummary = booksummary;
	}
	public Long getBookowner() {
		return bookowner;
	}
	public void setBookowner(Long bookowner) {
		this.bookowner = bookowner;
	}
	public String getBookpic() {
		return bookpic;
	}
	public void setBookpic(String bookpic) {
		this.bookpic = bookpic;
	}
	@Override
	public String toString() {
		return "AddBookModel [bookname=" + bookname + ", bookauthor=" + bookauthor + ", bookpress=" + bookpress
				+ ", booktype=" + booktype + ", bookcount=" + bookcount + ", bookprice=" + bookprice + ", bookpricenow="
				+ bookpricenow + ", bookwornlevel=" + bookwornlevel + ", booksummary=" + booksummary + ", bookowner="
				+ bookowner + ", bookpic=" + bookpic + "]";
	}
}
