package com.cqnu.bookEX.mapper.shop;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.cqnu.bookEX.model.common.CategoryModel;
import com.cqnu.bookEX.model.order.OrderModel;
import com.cqnu.bookEX.model.shop.ShopModel;

@Mapper
public interface ShopMapper {
	
	@Select("select * from bookex_shop order by createdtime desc limit 12")
	public List<ShopModel> getShop();
	
	@Select("select * from bookex_shop where shopid=#{id}")
	public ShopModel getShopById(@Param("id") Long id);
	
	@Select("select description from bookex_category where cowner=#{id}")
	public List<String> getCategoryById(@Param("id") Long shopid);
	
	@Select("select * from bookex_shop where shopname like '%${condition}%'")
	public List<ShopModel> getsearchShopList(@Param("condition") String condition);
	
	@Select("select * from bookex_shop where shopadmin1=#{adminid} OR shopadmin2=#{adminid} OR shopadmin3=#{adminid}")
	public ShopModel getShopByAdmin(@Param("adminid") Long id);
	
	//增加店铺
	@Insert("insert into bookex_shop (shopname,shoplogo,paypic1,paypic2,shopmsg,shoptel,shopadmin1,created_by,createdtime)"
			+ "values(#{shop.shopname},#{shop.shoplogo},#{shop.paypic1},#{shop.paypic2},#{shop.shopmsg},#{shop.shoptel},#{shop.shopadmin1},#{shop.shopadmin1},SYSDATE())")
	public int addShop(@Param("shop")ShopModel shop);
	
	@Select("select cid,description from bookex_category where cowner=#{id}")
	public List<CategoryModel> getCategory(@Param("id") Long shopid);
	
	//获取店铺订单
	@Select("SELECT bu.username as buyername, bb.bookpic,bb.author,bb.pricenow as price, bb.bookname AS gname,bs.shopname,bo.*  FROM bookex_order bo LEFT JOIN bookex_book bb ON bo.isbn=bb.isbn LEFT JOIN bookex_shop bs ON bs.shopid=bb.`owner` LEFT JOIN bookex_user bu ON bo.buyerid=bu.userid WHERE bo.sellerid=#{shopid} AND bo.deleted=0 AND ostatus=#{status} order by bo.createdtime desc;")
	public List<OrderModel> getShopOrder(@Param("shopid") Long shopid,@Param("status") int status);
	
	//处理单个订单
	@Update("update bookex_order set ostatus=1,updated_by=#{userid},updatedtime=SYSDATE() where orderid=#{orderid} and ostatus=0")
	public int dealOrder(@Param("orderid") Long orderid,@Param("userid") Long userid);
	
	//修改店铺logo
	@Update("update bookex_shop set shoplogo=#{picname},updatedtime=SYSDATE() where shopid=#{shopid}")
	public int changeShopLogo(@Param("shopid") Long shopid,@Param("picname") String picname);
	
}
