package com.cqnu.bookEX.service.common;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.cqnu.bookEX.model.common.CategoryModel;

public interface CommonService {
	
	public Map<String,Integer> getPageInfo(String tablename,int pagesize,int pagenow,Long owner,int ownertype,int condition);
	
	//public Map<String,Integer> getSearchPageInfo(String tablename,int pagesize,int pagenow,Long owner,int ownertype);
	
	public Map<String,Object> fileup(MultipartFile file,String path);
	
	//获取破损等级
	public List<CategoryModel> getWornLevel();
	
	//增加店铺类别
	public int addCategory(Long owner,String description);
}
