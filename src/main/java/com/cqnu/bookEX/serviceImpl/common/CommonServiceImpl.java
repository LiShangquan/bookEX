package com.cqnu.bookEX.serviceImpl.common;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.cqnu.bookEX.mapper.common.CommonMapper;
import com.cqnu.bookEX.model.common.CategoryModel;
import com.cqnu.bookEX.service.common.CommonService;
@Service
public class CommonServiceImpl implements CommonService {
	
	private Logger logger = Logger.getLogger(CommonServiceImpl.class);
	
	@Autowired
	private CommonMapper commonMapper;

	@Override
	public Map<String,Integer> getPageInfo(String tablename, int pagesize,int pagenow,Long owner,int ownertype,int condition) {
		// TODO Auto-generated method stub
		int recordcount=0;
		if(condition==0)
		{
			 recordcount=commonMapper.getBookCount(tablename,owner,ownertype);
		}else
		{
			recordcount=commonMapper.getSearchBookCount(tablename, owner, ownertype, condition);
		}
		int pagecount=0;
		int recordnow=0;
		int temporarycount=recordcount/pagesize;
		int temporary=recordcount%pagesize;
		if(recordcount<pagesize)
		{
			pagecount=1;
		}
		else
		{
		pagecount=temporary==0?temporarycount:temporarycount+1;
		}
		if(pagenow==0)
		{
			recordnow=0;
		}else
		{
			recordnow=(pagenow-1)*pagesize;
		}
		if(recordnow==1)
		{
			recordnow=0;
		}
		Map<String,Integer> pageMap=new HashMap<String,Integer>();
		pageMap.put("pagecount", pagecount);
		pageMap.put("recordnow", recordnow);
		pageMap.put("pagenow", pagenow);
		return pageMap;
	}

	@Override
	public Map<String,Object> fileup(MultipartFile file, String path) {
		// TODO Auto-generated method stub
		int result=0;
		Map<String,Object> fileMap=new HashMap<String,Object>();
		// 获取文件名
	     String fileName = file.getOriginalFilename();
	     logger.info("上传的文件名为：" + fileName);
	 
	     // 获取文件的后缀名
	     String suffixName = fileName.substring(fileName.lastIndexOf("."));
	     logger.info("上传的后缀名为：" + suffixName);
	 
	     // 文件上传路径
	     String filePath = path;
	 
	     // 解决中文问题，liunx下中文路径，图片显示问题
	     fileName = UUID.randomUUID() + suffixName;
	    
	     File dest = new File(filePath + fileName);
	 
	     // 检测是否存在目录
	     if (!dest.getParentFile().exists()) {
	         dest.getParentFile().mkdirs();
	     }
	     try {
	         file.transferTo(dest);
	         if(dest.exists())
		     {
		    	 result=1;
		     }
	     } catch (IllegalStateException e) {
	         e.printStackTrace();
	     } catch (IOException e) {
	         e.printStackTrace();
	     }
	     fileMap.put("filename", fileName);
	     fileMap.put("result", result);
		return fileMap;
	}

	@Override
	public List<CategoryModel> getWornLevel() {
		// TODO Auto-generated method stub
		return commonMapper.getWornLevel();
	}

	@Override
	public int addCategory(Long owner, String description) {
		// TODO Auto-generated method stub
		return commonMapper.addCategory(owner, description);
	}
}
