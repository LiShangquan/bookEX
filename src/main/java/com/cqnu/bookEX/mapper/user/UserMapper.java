package com.cqnu.bookEX.mapper.user;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.cqnu.bookEX.model.cart.CartModel;
import com.cqnu.bookEX.model.messageboard.MessageBoardModel;
import com.cqnu.bookEX.model.order.OrderModel;
import com.cqnu.bookEX.model.user.UserModel;

@Mapper
public interface UserMapper {
	//测试查询用户
	@Select("select * from bookex_user where userid = #{id}")
	public UserModel getUserInfo(@Param("id") Long id);
	
	//测试返回数组
	@Select("select * from bookex_user")
	public List<UserModel> getUser();
	
	//登录验证
	@Select("select * from bookex_user where username=#{username} and pwd=#{pwd} and usertype=#{usertype}")
	public UserModel getOneUser(@Param("username") String username,@Param("pwd") String pwd,@Param("usertype") int usertype);
	
	//普通用户登录验证
	@Select("select * from bookex_user where username=#{username} and pwd=#{pwd}")
	public UserModel getCommonUser(@Param("username") String username,@Param("pwd") String pwd);
	
	//加入购入车前先判断是否存在
	@Select("select COUNT(*) from bookex_cart where isbn=#{isbn} and userid=#{userid} and owner=#{owner} and deleted=0 ")
	public int checkSame(@Param("isbn") Long isbn,@Param("userid") Long userid,@Param("owner") Long owner);
	
	//插入购物车
	@Insert("INSERT INTO bookex_cart(userid,isbn,count,gcount,owner,created_by) values (#{userid},#{isbn},#{count},#{gcount},#{owner},#{userid})")
	public int insertCart(@Param("isbn") Long isbn,@Param("userid") Long userid,@Param("gcount") int gcount,@Param("owner") Long owner,@Param("count") int count);
	
	//加入购入车前先判断是否存在
	@Update("update bookex_book set nowcount=nowcount-#{count} where isbn=#{isbn} and deleted=0")
	public int updateBook(@Param("isbn") Long isbn,@Param("count") int count);
	
	//更新购物车
	@Update("update bookex_cart set gcount=#{gcount}+gcount,count=#{count} , createdtime=SYSDATE() where isbn=#{isbn} and userid=#{userid} and deleted=0")
	public int updateCart(@Param("isbn") Long isbn,@Param("userid") Long userid,@Param("gcount") int gcount,@Param("count") int count);
	
	//更新购物车
	@Update("update bookex_cart set gcount=#{gcount},count=#{count} , createdtime=SYSDATE() where isbn=#{isbn} and userid=#{userid} and deleted=0")
	public int updateCartcount(@Param("isbn") Long isbn,@Param("userid") Long userid,@Param("gcount") int gcount,@Param("count") int count);
	
	//查看购物车
	@Select("select bb.bookpic,bb.author,bb.pricenow as price, bb.bookname AS gname,bs.shopname,bc.* FROM bookex_cart bc LEFT JOIN bookex_book bb ON bc.isbn=bb.isbn LEFT JOIN bookex_shop bs ON bs.shopid=bb.`owner` WHERE bc.userid=#{userid} AND bc.deleted=0 order by bc.createdtime desc;")
	public List<CartModel> viewMyCart(@Param("userid") Long userid);
	
	//从我的购物车移除一件商品
	@Update("update bookex_cart set deleted=1 where id=#{id}")
	public int removeFromMyCart(@Param("id") Long id);
	
	//提交购物车中的一件商品
	@Insert("INSERT INTO bookex_order (buyerid,sellerid,isbn,obookcount,created_by) SELECT bc.userid,bc.owner,bc.isbn,bc.gcount,bc.userid FROM bookex_cart bc WHERE bc.deleted=0 AND bc.id=#{id};")
	public int insertOneToOrder(@Param("id") Long id);
	
	//从我的购物车移除所有商品
	@Update("update bookex_cart set deleted=1 where userid=#{userid}")
	public int removeAllFromMyCart(@Param("userid") Long userid);
	
	//提交购物车中的所有商品
	@Insert("INSERT INTO bookex_order (buyerid,sellerid,isbn,obookcount,created_by) SELECT bc.userid,bc.owner,bc.isbn,bc.gcount,bc.userid FROM bookex_cart bc WHERE bc.deleted=0 AND bc.userid=#{userid};")
	public int insertAllToOrder(@Param("userid") Long userid);
	
	//查看我的订单
	@Select("SELECT bb.bookpic,bb.author,bb.pricenow as price, bb.bookname AS gname,bs.shopname,bo.*  FROM bookex_order bo LEFT JOIN bookex_book bb ON bo.isbn=bb.isbn LEFT JOIN bookex_shop bs ON bs.shopid=bb.`owner` WHERE bo.buyerid=#{userid} AND bo.deleted=0 order by bo.createdtime desc;")
	public List<OrderModel> viewMyOrder(@Param("userid") Long userid);
	
	//更新用户类型
	@Update("update bookex_user set usertype=1 where userid=#{userid}")
	public int updateUserType(@Param("userid")Long userid);
	
	//增加找书信息
	@Insert("INSERT INTO bookex_messageboard (userid,bookname,bookauthor,msgcontent,created_by,createdtime)"+
	"values(#{msg.userid},#{msg.bookname},#{msg.bookauthor},#{msg.msgcontent},#{msg.userid},SYSDATE())")
	public int addFindBook(@Param("msg") MessageBoardModel msg);
	
	//浏览用户找书记录
	@Select("select * from bookex_messageboard where userid=#{userid} and deleted=0 ORDER BY createdtime desc")
	public List<MessageBoardModel> viewMyFindBook(@Param("userid") Long userid);
	
	//更改用户找书状态
	@Update("update bookex_messageboard set msgstatus=1 , updated_by=#{userid}, updatedtime=SYSDATE() WHERE msgid=#{msgid}")
	public int changeFindBbookStatus(@Param("msgid") Long msgid,@Param("userid")Long userid);
	
	//获取所有求书信息
	@Select("select bu.username as username, bm.* from bookex_messageboard bm left join bookex_user bu on bm.userid=bu.userid  where bm.msgstatus=0 order by bm.createdtime desc")
	public List<MessageBoardModel> getAllFindBook();
	
	//更改用户找书状态
	@Update("update bookex_book set deleted=1 , updated_by=#{userid}, updatedtime=SYSDATE() WHERE isbn=#{isbn}")
	public int changeGiveBookStatus(@Param("isbn") Long isbn,@Param("userid")Long userid);
	
	//用户注册
	@Insert("insert into bookex_user (username,pwd,usertype,created_by,createdtime) values (#{user.username},#{user.pwd},#{user.usertype},#{user.username},SYSDATE())")
	public int register(@Param("user") UserModel user);
	
	//修改用户信息
	@Update("update bookex_user set telephone=#{tel},address=#{address},pwd=#{pwd},updatedtime=SYSDATE() where userid=#{userid} and deleted=0")
	public int changeUserInfo(@Param("userid") Long userid,@Param("tel") String tel,@Param("address") String address,@Param("pwd") String pwd);
	
	//通过购物车id查找购物车记录
	@Select("select bb.bookpic,bb.author,bb.pricenow as price, bb.bookname AS gname,bs.shopname,bc.* FROM bookex_cart bc LEFT JOIN "
			+ "bookex_book bb ON bc.isbn=bb.isbn LEFT JOIN bookex_shop bs ON bs.shopid=bb.`owner` "
			+ "WHERE bc.id=#{cartid} AND bc.deleted=0 order by bc.createdtime desc;")
	public CartModel getOneCart(@Param("cartid") Long cartid);
}
