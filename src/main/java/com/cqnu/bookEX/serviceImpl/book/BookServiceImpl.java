package com.cqnu.bookEX.serviceImpl.book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cqnu.bookEX.mapper.book.BookMapper;
import com.cqnu.bookEX.model.book.AddBookModel;
import com.cqnu.bookEX.model.book.BookModel;
import com.cqnu.bookEX.service.book.BookService;

@Service
public class BookServiceImpl implements BookService {
	@Autowired
	private BookMapper bookMapper;
	
	//获取最新图书
	@Override
	public List<BookModel> getLatestBook() {
		// TODO Auto-generated method stub
		return bookMapper.getLatestBook();
	}
	
	//通过所有者获取图书
	@Override
	public List<BookModel> getBookByOwner(Long owner, int ownertype,int recordnow,int pagesize) {
		// TODO Auto-generated method stub
		return bookMapper.getBookByOwner(owner, ownertype,recordnow,pagesize);
	}
	
	//通过isbn获取图书
	@Override
	public BookModel getBookByIsbn(Long isbn) {
		// TODO Auto-generated method stub
		return bookMapper.getBookByIsbn(isbn);
	}
	
	//获取个人图书
	@Override
	public List<BookModel> getPersonalBooks(int ownertype) {
		// TODO Auto-generated method stub
		return bookMapper.getBookByOwnerType(ownertype);
	}
	
	//首页查找图书
	@Override
	public List<BookModel> getSearchList(String condition) {
		// TODO Auto-generated method stub
		return bookMapper.getSearchBook(condition);
	}
	
	//店内搜索
	@Override
	public List<BookModel> getSearchSelf(String condition, Long owner, int ownertype) {
		// TODO Auto-generated method stub
		return bookMapper.getSearchSelf(condition, owner, ownertype);
	}
	
	//分类搜索
	@Override
	public List<BookModel> getBooksByType(String type, Long owner, int ownertype) {
		// TODO Auto-generated method stub
		return bookMapper.getBooksByType(owner, ownertype,type);
	}
	
	//查找typeId
	@Override
	public int getTypeId(String type, Long owner, int ownertype) {
		// TODO Auto-generated method stub
		return bookMapper.getTypeID(type, owner, ownertype);
	}

	@Override
	public int addBook(AddBookModel book) {
		// TODO Auto-generated method stub
		return bookMapper.addBook(book);
	}

	@Override
	public int uaerAddBook(BookModel book) {
		// TODO Auto-generated method stub
		return bookMapper.userAddBook(book);
	}

	@Override
	public List<BookModel> getOneBooks(Long userid, int ownertype) {
		// TODO Auto-generated method stub
		return bookMapper.getOneBook(userid, ownertype);
	}

	@Override
	public List<BookModel> getOutBooks(Long owner, int ownertype, int recordnow, int pagesize) {
		// TODO Auto-generated method stub
		return bookMapper.getOutBook(owner, ownertype, recordnow, pagesize);
	}

	@Override
	public int changeBookMark(Long isbn,String bookpic) {
		// TODO Auto-generated method stub
		return bookMapper.changeBookMark(isbn, bookpic);
	}

	@Override
	public int changeBookInfo(BookModel book) {
		// TODO Auto-generated method stub
		return bookMapper.changeBookInfo(book);
	}

}
