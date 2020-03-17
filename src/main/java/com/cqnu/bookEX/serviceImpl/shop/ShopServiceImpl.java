package com.cqnu.bookEX.serviceImpl.shop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cqnu.bookEX.mapper.shop.ShopMapper;
import com.cqnu.bookEX.model.common.CategoryModel;
import com.cqnu.bookEX.model.order.OrderModel;
import com.cqnu.bookEX.model.shop.ShopModel;
import com.cqnu.bookEX.service.shop.ShopService;

@Service
public class ShopServiceImpl implements ShopService {
	@Autowired
	private ShopMapper shopMapper;
	
	@Override
	public List<ShopModel> getShopList() {
		// TODO Auto-generated method stub
		return shopMapper.getShop();
	}

	@Override
	public ShopModel getShopById(Long id) {
		// TODO Auto-generated method stub
		return shopMapper.getShopById(id);
	}

	@Override
	public List<String> getCategoryById(Long shopid) {
		// TODO Auto-generated method stub
		return shopMapper.getCategoryById(shopid);
	}
	
	@Override
	public List<ShopModel> getSearchShopList(String condition) {
		// TODO Auto-generated method stub
		return shopMapper.getsearchShopList(condition);
	}

	@Override
	public ShopModel getShopByAdmin(Long id) {
		// TODO Auto-generated method stub
		return shopMapper.getShopByAdmin(id);
	}

	@Override
	public int addShop(ShopModel shop) {
		// TODO Auto-generated method stub
		return shopMapper.addShop(shop);
	}

	@Override
	public List<CategoryModel> getCategory(Long shopid) {
		// TODO Auto-generated method stub
		return shopMapper.getCategory(shopid);
	}

	@Override
	public List<OrderModel> getShopOrder(Long shopid, int status) {
		// TODO Auto-generated method stub
		return shopMapper.getShopOrder(shopid, status);
	}

	@Override
	public int updateOrder(Long orderid,Long userid) {
		// TODO Auto-generated method stub
		return shopMapper.dealOrder(orderid,userid);
	}

	@Override
	public int changeLogo(Long shopid, String picname) {
		// TODO Auto-generated method stub
		return shopMapper.changeShopLogo(shopid, picname);
	}

}
