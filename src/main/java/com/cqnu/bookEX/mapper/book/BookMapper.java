package com.cqnu.bookEX.mapper.book;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.cqnu.bookEX.model.book.AddBookModel;
import com.cqnu.bookEX.model.book.BookModel;

@Mapper
public interface BookMapper {

	// 查找最近图书
	@Select("SELECT * FROM bookex_book where nowcount>0 and deleted=0 ORDER BY createdtime DESC LIMIT 8")
	public List<BookModel> getLatestBook();

	// 查找店铺的图书 通过owner and ownertype
	@Select("SELECT * FROM bookex_book WHERE nowcount>0 AND owner=#{owner} AND ownertype=#{ownertype} LIMIT #{recordnow} , #{pagesize}")
	public List<BookModel> getBookByOwner(@Param("owner") Long owner, @Param("ownertype") int ownertype,
			@Param("recordnow") int recordnow, @Param("pagesize") int pagesize);

	// 通过ISBN查找
	@Select("SELECT * FROM bookex_book WHERE  isbn=#{isbn} and deleted=0")
	public BookModel getBookByIsbn(@Param("isbn") Long isbn);

	// 查找书店图书
	@Select("SELECT * FROM bookex_book WHERE nowcount>0 and ownertype=#{ownertype} and deleted=0 order by createdtime desc LIMIT 8")
	public List<BookModel> getBookByOwnerType(@Param("ownertype") int ownertype);

	// 站内搜索
	@Select("select *  FROM bookex_book WHERE nowcount>0 and bookname LIKE '%${condition}%' OR author LIKE '%${condition}%'")
	public List<BookModel> getSearchBook(@Param("condition") String condition);

	// 店内查找
	@Select("select *  FROM bookex_book WHERE ( owner=#{owner} AND ownertype=#{ownertype}) AND (bookname LIKE '%${condition}%' OR author LIKE '%${condition}%')")
	public List<BookModel> getSearchSelf(@Param("condition") String condition, @Param("owner") Long owner,
			@Param("ownertype") int ownertype);

	// 分类查找店内图书
	@Select("select * from bookex_book where owner=#{owner} and nowcount>0 and ownertype=#{ownertype} and booktype=(SELECT cid from bookex_category WHERE cowner=#{owner} AND description=#{type} and cownertype=#{ownertype})")
	public List<BookModel> getBooksByType(@Param("owner") Long owner, @Param("ownertype") int ownertype,
			@Param("type") String type);

	// 查找类别ID
	@Select("SELECT cid from bookex_category WHERE cowner=#{owner} AND description='${type}' and cownertype=#{ownertype}")
	public int getTypeID(@Param("type") String type, @Param("owner") Long owner, @Param("ownertype") int ownertype);

	// 店家插入图书
	@Insert("insert into bookex_book (owner,ownertype,bookname,author,press,booktype,bookcount,nowcount,bookprice,pricenow,wornlevel,summary,bookpic,created_by,createdtime)"
			+ "values (#{book.bookowner},0,#{book.bookname},#{book.bookauthor},#{book.bookpress},#{book.booktype},#{book.bookcount},#{book.bookcount},#{book.bookprice},#{book.bookpricenow},#{book.bookwornlevel},#{book.booksummary},#{book.bookpic},#{book.bookowner},SYSDATE())")
	public int addBook(@Param("book") AddBookModel book);

	// 用户插入图书
	@Insert("insert into bookex_book (owner,ownertype,bookname,author,press,booktype,bookcount,nowcount,bookprice,pricenow,wornlevel,summary,bookpic,created_by,createdtime)"
			+ "values (#{book.owner},#{book.ownertype},#{book.bookname},#{book.author},#{book.press},#{book.booktype},#{book.bookcount},#{book.bookcount},#{book.bookprice},#{book.pricenow},#{book.wornlevel},#{book.summary},#{book.bookpic},#{book.owner},SYSDATE())")
	public int userAddBook(@Param("book") BookModel book);
	
	// 查找用户上传图书
	@Select("SELECT * FROM bookex_book WHERE owner=#{owner} and ownertype=#{ownertype} ORDER BY createdtime desc")
	public List<BookModel> getOneBook(@Param("owner") Long userid,@Param("ownertype") int ownertype);
	
	//查看店铺已售罄图书
	@Select("SELECT * FROM bookex_book WHERE nowcount=0 AND owner=#{owner} AND ownertype=#{ownertype} LIMIT #{recordnow} , #{pagesize}")
	public List<BookModel> getOutBook(@Param("owner") Long owner, @Param("ownertype") int ownertype,
			@Param("recordnow") int recordnow, @Param("pagesize") int pagesize);
	
	//修改图书封面
	@Update("update bookex_book set bookpic=#{bookpic} ,updatedtime=SYSDATE() where isbn=#{isbn}")
	public int changeBookMark(@Param("isbn") Long isbn,@Param("bookpic") String bookpic);
	
	//修改图书信息
	@Update("update bookex_book set bookname=#{book.bookname},author=#{book.author},press=#{book.press},bookcount=#{book.bookcount},nowcount=#{book.nowcount},bookprice=#{book.bookprice},pricenow=#{book.pricenow},summary=#{book.summary},updatedtime=SYSDATE() where isbn=#{book.isbn}")
	public int changeBookInfo(@Param("book") BookModel book);
	
}
