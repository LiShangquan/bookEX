package com.cqnu.bookEX.mapper.common;


import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.cqnu.bookEX.model.common.CategoryModel;

@Mapper
public interface CommonMapper {
	
	@Select("select COUNT(*) from ${tablename} where owner=#{owner} and ownertype=#{ownertype}")
	public int getBookCount(@Param("tablename") String tablename,@Param("owner") Long owner,@Param("ownertype") int ownertype);
	
	@Select("select COUNT(*) from ${tablename} where owner=#{owner} and ownertype=#{ownertype} and booktype=#{condition}")
	public int getSearchBookCount(@Param("tablename") String tablename,@Param("owner") Long owner,@Param("ownertype") int ownertype,@Param("condition") int condition);
	
	@Select("select cid,description from bookex_category where cowner=0 and cownertype=2")
	public List<CategoryModel> getWornLevel();
	
	//增加店铺图书分类
	@Insert("insert into bookex_category (cowner,cownertype,description,created_by,createdtime)"+
	"values(#{owner},0,#{description},#{owner},SYSDATE())")
	public int addCategory(@Param("owner") Long owner,@Param("description") String description);
}
