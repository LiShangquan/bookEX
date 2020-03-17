package com.cqnu.bookEX.service.shop;

import java.util.List;

import com.cqnu.bookEX.model.common.CategoryModel;
import com.cqnu.bookEX.model.order.OrderModel;
import com.cqnu.bookEX.model.shop.ShopModel;

public interface ShopService {
	
	//获取推荐店铺
	public List<ShopModel> getShopList();
	
	//根据ID获取店铺信息
	public ShopModel getShopById(Long id);
	
	//获取店铺分类
	public List<String> getCategoryById(Long shopid);
	
	//店铺搜索
	public List<ShopModel> getSearchShopList(String condition);
	
	//根据管理员获取店铺
	public ShopModel getShopByAdmin(Long id);
	
	//增加店铺
	public int addShop(ShopModel shop);
	
	//获取店铺分类
	public List<CategoryModel> getCategory(Long shopid);
	
	//获取店铺订单(已处理1未处理0)
	public List<OrderModel> getShopOrder(Long shopid,int status);
	
	//处理单个订单
	public int updateOrder(Long orderid,Long userid);
	
	//修改店铺logo
	public int changeLogo(Long shopid,String picname);
}
