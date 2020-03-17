package com.cqnu.bookEX.service.user;

import java.util.List;

import com.cqnu.bookEX.model.cart.CartModel;
import com.cqnu.bookEX.model.messageboard.MessageBoardModel;
import com.cqnu.bookEX.model.order.OrderModel;
import com.cqnu.bookEX.model.user.UserModel;

public interface UserService {
	
	//测试数据
	public UserModel getUserInfo(Long id);
	
	//获取所有
	public List<UserModel> getUser();
	
	//登录验证
	public UserModel getOneUser(String username,String pwd,int usertype);
	
	//普通用户登录验证
	public UserModel getCommonUser(String username, String pwd);
	
	//加入购物车
	public int add2ShoppingCart(Long isbn,Long userid,Long owner,int gcount,int count);
	
	//修改购物车数量
	public int changeShoppingCart(Long isbn,Long userid,Long owner,int gcount,int count);
	
	//查看购物车
	public List<CartModel> viewMyCart(Long userid);
	
	//从我的购物车移除
	public int removeFromMyCart(Long id);
	
	//根据购物车id查询
	public CartModel getOneCart(Long cartid);
	
	//提交购物车中的一件商品
	public int addOneToOrder(Long id);
	
	//提交购物车中的所有商品
	public int addAllToOrder(Long userid);
	
	//提交购物车中的所有商品
	public List<OrderModel> viewMyOrder(Long userid);
	
	//更新用户类型
	public int updateUserType(Long userid);
	
	//增加找书信息
	public int addFindBook(MessageBoardModel msg);
	
	//查看用户求书告示
	public List<MessageBoardModel> viewMyFindBook(Long userid);
	
	//更改用户求书告示状态
	public int changeMsgStatus(Long msgid,Long userid);
	
	//获取所有找书信息
	public List<MessageBoardModel> getAllFindBook();
	
	//更改用户奉献图书状态
	public int updateGiveBook(Long isbn,Long userid);
	
	//用户注册
	public int register(UserModel user);
	
	//修改用户信息
	public int changeUserInfo(Long userid,String tel,String address,String pwd);
}
