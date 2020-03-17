package com.cqnu.bookEX.service.book;

import java.util.List;

import com.cqnu.bookEX.model.book.AddBookModel;
import com.cqnu.bookEX.model.book.BookModel;

public interface BookService {
	
	//获取最新图书
	public List<BookModel> getLatestBook();
	
	//通过所有者获取图书
	public List<BookModel> getBookByOwner(Long owner,int ownertype,int recordnow,int pagesize);
	
	//通过isbn获取图书
	public BookModel getBookByIsbn(Long isbn);
	
	//获取个人图书
	public List<BookModel> getPersonalBooks(int ownertype);
	
	//搜索本站图书
	public List<BookModel> getSearchList(String condition);
	
	//搜索本店图书
	public List<BookModel> getSearchSelf(String condition,Long owner,int ownertype);
	
	//分类搜索本店图书
	public List<BookModel> getBooksByType(String type,Long owner,int ownertype);
	
	//获取类别ID
	public int getTypeId(String type,Long owner,int ownertype);
	
	//添加图书
	public int addBook(AddBookModel book);
	
	//用户上传图书
	public int uaerAddBook(BookModel book);
	
	//获取个人图书
	public List<BookModel> getOneBooks(Long userid,int ownertype);
	
	//获取店铺售罄图书
	public List<BookModel> getOutBooks(Long owner,int ownertype,int recordnow,int pagesize);
	
	//修改图书封面
	public int changeBookMark(Long isbn,String bookpic);
	
	//修改图书信息
	public int changeBookInfo(BookModel book);
}
