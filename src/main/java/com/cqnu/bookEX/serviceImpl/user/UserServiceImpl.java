package com.cqnu.bookEX.serviceImpl.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cqnu.bookEX.mapper.user.UserMapper;
import com.cqnu.bookEX.model.cart.CartModel;
import com.cqnu.bookEX.model.messageboard.MessageBoardModel;
import com.cqnu.bookEX.model.order.OrderModel;
import com.cqnu.bookEX.model.user.UserModel;
import com.cqnu.bookEX.service.user.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;

	public UserModel getUserInfo(Long id) {
		// TODO Auto-generated method stub
		return userMapper.getUserInfo(id);
	}

	public List<UserModel> getUser() {
		return userMapper.getUser();
	}

	// 登录验证
	@Override
	public UserModel getOneUser(String username, String pwd, int usertype) {
		// TODO Auto-generated method stub
		return userMapper.getOneUser(username, pwd, usertype);
	}

	// 登录验证
	@Override
	public UserModel getCommonUser(String username, String pwd) {
		// TODO Auto-generated method stub
		return userMapper.getCommonUser(username, pwd);
	}

	@Override
	public int add2ShoppingCart(Long isbn, Long userid, Long owner, int gcount, int count) {
		// TODO Auto-generated method stub
		int console = 1;
		int update = 0;
		int insert = 0;
		int resultUpdate=0;
		try {
			int resultcount = userMapper.checkSame(isbn, userid, owner);
			if (resultcount != 0)// 有则更新
			{
				update = userMapper.updateCart(isbn, userid, gcount, count);
			} else// 无则插入
			{
				insert = userMapper.insertCart(isbn, userid, gcount, owner, count);
			}
			resultUpdate=userMapper.updateBook(isbn, gcount);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (insert == 0 && update == 0 && resultUpdate==0) {
			console = 0;
		}
		return console;
	}

	@Override
	public List<CartModel> viewMyCart(Long userid) {
		// TODO Auto-generated method stub
		return userMapper.viewMyCart(userid);
	}

	// 从我的购物车移除
	@Override
	public int removeFromMyCart(Long id) {
		// TODO Auto-generated method stub
		int result = 0;
		result = userMapper.removeFromMyCart(id);
		return result;
	}

	// 提交购物车中的一件商品
	@Override
	public int addOneToOrder(Long id) {
		// TODO Auto-generated method stub
		int insertresult = 0;
		int deleteresult = 0;
		int console = 0;
		insertresult = userMapper.insertOneToOrder(id);
		if (insertresult != 0) {
			deleteresult = userMapper.removeFromMyCart(id);
		}
		if (insertresult == 1 && deleteresult == 1) {
			console = 1;
		}
		return console;
	}

	// 提交购物车中的全部图书
	@Override
	public int addAllToOrder(Long userid) {
		// TODO Auto-generated method stub
		int insertresult = 0;
		int deleteresult = 0;
		int console = 0;
		insertresult = userMapper.insertAllToOrder(userid);
		if (insertresult != 0) {
			deleteresult = userMapper.removeAllFromMyCart(userid);
		}
		if (insertresult != 0 && deleteresult != 0) {
			console = 1;
		}
		return console;
	}

	// 查看我的订单
	@Override
	public List<OrderModel> viewMyOrder(Long userid) {
		// TODO Auto-generated method stub
		return userMapper.viewMyOrder(userid);
	}

	@Override
	public int changeShoppingCart(Long isbn, Long userid, Long owner, int gcount, int count) {
		// TODO Auto-generated method stub
		int update = 0;
		update = userMapper.updateCartcount(isbn, userid, gcount, count);
		return update;
	}

	@Override
	public int updateUserType(Long userid) {
		// TODO Auto-generated method stub
		return userMapper.updateUserType(userid);
	}

	@Override
	public int addFindBook(MessageBoardModel msg) {
		// TODO Auto-generated method stub
		return userMapper.addFindBook(msg);
	}

	@Override
	public List<MessageBoardModel> viewMyFindBook(Long userid) {
		// TODO Auto-generated method stub
		return userMapper.viewMyFindBook(userid);
	}

	@Override
	public int changeMsgStatus(Long msgid,Long userid) {
		// TODO Auto-generated method stub
		return userMapper.changeFindBbookStatus(msgid, userid);
	}

	@Override
	public List<MessageBoardModel> getAllFindBook() {
		// TODO Auto-generated method stub
		return userMapper.getAllFindBook();
	}

	@Override
	public int updateGiveBook(Long isbn,Long userid) {
		// TODO Auto-generated method stub
		return userMapper.changeGiveBookStatus(isbn, userid);
	}

	@Override
	public int register(UserModel user) {
		// TODO Auto-generated method stub
		return userMapper.register(user);
	}

	@Override
	public int changeUserInfo(Long userid, String tel, String address, String pwd) {
		// TODO Auto-generated method stub
		return userMapper.changeUserInfo(userid, tel, address, pwd);
	}

	@Override
	public CartModel getOneCart(Long cartid) {
		// TODO Auto-generated method stub
		return userMapper.getOneCart(cartid);
	}
}
