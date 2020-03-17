package com.cqnu.bookEX.web.user;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.cqnu.bookEX.model.book.BookModel;
import com.cqnu.bookEX.model.cart.CartModel;
import com.cqnu.bookEX.model.common.CategoryModel;
import com.cqnu.bookEX.model.messageboard.MessageBoardModel;
import com.cqnu.bookEX.model.order.OrderModel;
import com.cqnu.bookEX.model.user.UserModel;
import com.cqnu.bookEX.service.book.BookService;
import com.cqnu.bookEX.service.common.CommonService;
import com.cqnu.bookEX.service.user.UserService;

@Controller
@RequestMapping({ "bookEX/user" })
public class UserController {
	private Logger logger = Logger.getLogger(UserController.class);

	@Autowired
	UserService userService;

	@Autowired
	CommonService commonService;

	@Autowired
	BookService bookService;

	// 通过Spring的autowired注解获取spring默认配置的request
	@Autowired
	private HttpServletRequest request;

	@RequestMapping(value = "userinfo", method = { RequestMethod.GET, RequestMethod.POST })
	// @ResponseBody
	public String user(ModelMap map) {
		UserModel user = userService.getUserInfo((long) 1000);
		logger.info(user);
		map.put("user", user);
		return "user/user";
	}

	// 加入购物车
	@RequestMapping(value = "addshoppingcart", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public int add2ShoppingCart(ModelMap map, HttpSession session, @RequestParam Long isbn, @RequestParam int gcount,
			@RequestParam Long owner, @RequestParam int count) {
		int result = 0;
		UserModel user = (UserModel) session.getAttribute("user");
		try {
			result = userService.add2ShoppingCart(isbn, user.getUserid(), owner, gcount, count);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// 修改购物车数量
	@RequestMapping(value = "changeshoppingcart", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public int changeShoppingCart(ModelMap map, HttpSession session, @RequestParam Long isbn, @RequestParam int gcount,
			@RequestParam Long owner, @RequestParam int count) {
		int result = 0;
		UserModel user = (UserModel) session.getAttribute("user");
		try {
			result = userService.changeShoppingCart(isbn, user.getUserid(), owner, gcount, count);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// 我的购物车
	@RequestMapping(value = "mycart", method = { RequestMethod.GET, RequestMethod.POST })
	// @ResponseBody
	public String viewMyCart(ModelMap map, HttpSession session) {
		UserModel user = new UserModel();
		List<CartModel> cartList = new ArrayList<CartModel>();
		user = (UserModel) session.getAttribute("user");
		try {
			cartList = userService.viewMyCart(user.getUserid());
			map.put("cartlist", cartList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/user/shoppingcart";
	}

	// 从我的购物车移除
	@RequestMapping(value = "removefrommycart", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public int removeFromMyCart(@RequestParam Long id) {
		int result = 0;
		try {
			result = userService.removeFromMyCart(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// 提交订单
	@RequestMapping(value = "gotocommitorder", method = { RequestMethod.GET, RequestMethod.POST })
	//@ResponseBody
	public String goToCommit(ModelMap map,@RequestParam Long cartid) {
		CartModel cart=new CartModel();
		try {
			cart=userService.getOneCart(cartid);
			map.put("cart", cart);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/order/order";
	}

	// 添加一件商品至订单
	@RequestMapping(value = "addOneToOrder", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public int addOneToOrder(@RequestParam Long id) {
		int result = 0;
		try {
			result = userService.addOneToOrder(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// 添加全部商品至订单
	@RequestMapping(value = "addAllToOrder", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public int addAllToOrder(HttpSession session) {
		UserModel user = new UserModel();
		user = (UserModel) session.getAttribute("user");
		int result = 0;
		try {
			result = userService.addAllToOrder(user.getUserid());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// 我的订单
	@RequestMapping(value = "myorder", method = { RequestMethod.GET, RequestMethod.POST })
	// @ResponseBody
	public String viewMyOrder(ModelMap map, HttpSession session) {
		UserModel user = new UserModel();
		user = (UserModel) session.getAttribute("user");
		try {
			List<OrderModel> orderList = userService.viewMyOrder(user.getUserid());
			map.put("orderlist", orderList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/order/myorder";
	}

	// 页面跳转至用户求书信息
	@RequestMapping(value = "linktofindbook", method = { RequestMethod.GET, RequestMethod.POST })
	// @ResponseBody
	public String shopAdminLinkToFindBook(HttpSession session, ModelMap model) {
		UserModel user = new UserModel();
		List<MessageBoardModel> msgs = new ArrayList<MessageBoardModel>();
		try {
			user = (UserModel) session.getAttribute("user");
			if (user != null) {
				msgs = userService.viewMyFindBook(user.getUserid());
				model.put("msgs", msgs);
				logger.info(msgs);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (user == null) {
			return "/error/error";
		} else {
			return "/user/findbook";
		}
	}

	// 添加求书信息
	@RequestMapping(value = "addfindbook", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public int addFindBook(HttpSession session, MessageBoardModel msg) {
		UserModel user = new UserModel();
		logger.info(msg);
		int result = 0;
		try {
			user = (UserModel) session.getAttribute("user");
			msg.setUserid(user.getUserid());
			if (user != null) {
				result = userService.addFindBook(msg);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// 更改求书信息状态
	@RequestMapping(value = "changefindbook", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public int changeFindBook(HttpSession session, @RequestParam Long msgid) {
		UserModel user = new UserModel();
		int result = 0;
		try {
			user = (UserModel) session.getAttribute("user");
			if (user != null) {
				result = userService.changeMsgStatus(msgid, user.getUserid());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// 页面跳转至用户增加图书信息
	@RequestMapping(value = "linktouseraddbook"/*
												 * ,method = {
												 * RequestMethod.GET,
												 * RequestMethod.POST }
												 */)
	// @ResponseBody
	public String shopAdminLinkToUserAddBook(HttpSession session, ModelMap model) {
		UserModel user = new UserModel();
		List<BookModel> books = new ArrayList<BookModel>();
		try {
			user = (UserModel) session.getAttribute("user");
			List<CategoryModel> wornLevel = commonService.getWornLevel();
			model.put("wornlevel", wornLevel);

			if (user != null) {
				books = bookService.getOneBooks(user.getUserid(), 1);
				model.put("books", books);
				logger.info(books);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		if (user == null) {
			return "/error/error";
		} else {
			return "/user/givebook";
		}
	}

	// 添加图书
	@RequestMapping(value = "/useraddbook", method = { RequestMethod.GET, RequestMethod.POST })
	// @ResponseBody
	public String addbook(HttpSession session, ModelMap model, MultipartFile file, BookModel book) {
		Map<String, Object> fileMap = new HashMap<String, Object>();
		UserModel user = new UserModel();
		user = (UserModel) session.getAttribute("user");
		int result = 0;
		int resultFile = 0;
		try {
			if (file.isEmpty()) {
				return "/error/error";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 文件上传路径
		@SuppressWarnings("deprecation")
		String filePath = request.getRealPath("img/book/");
		fileMap = commonService.fileup(file, filePath);
		resultFile = (Integer) fileMap.get("result");
		if (resultFile == 1) {
			book.setBookpic(fileMap.get("filename").toString());
		}
		if (user != null) {
			book.setOwner(user.getUserid());
			book.setOwnertype(1);
		}
		try {
			result = bookService.uaerAddBook(book);
			if (result != 0) {
				model.put("useraddbookresult", result);
			}
		} catch (IllegalStateException e) {
			e.printStackTrace();
		}
		logger.info(book);

		List<BookModel> books = new ArrayList<BookModel>();
		try {
			user = (UserModel) session.getAttribute("user");
			List<CategoryModel> wornLevel = commonService.getWornLevel();
			model.put("wornlevel", wornLevel);

			if (user != null) {
				books = bookService.getOneBooks(user.getUserid(), 1);
				model.put("books", books);
				logger.info(books);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/user/givebook";
	}

	// 更改奉献图书信息状态
	@RequestMapping(value = "changegivebook", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public int updateGiveBook(HttpSession session, @RequestParam Long isbn) {
		UserModel user = new UserModel();
		int result = 0;
		try {
			user = (UserModel) session.getAttribute("user");
			if (user != null) {
				result = userService.updateGiveBook(isbn, user.getUserid());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// 用户注册
	@RequestMapping(value = "register", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public int register(@RequestParam String username, @RequestParam String pwd) {
		UserModel user = new UserModel();
		user.setUsername(username);
		user.setPwd(pwd);
		user.setUsertype(2);
		logger.info(user);
		int result = 0;
		try {
			result = userService.register(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// 图书展示用户图书详情
	@RequestMapping(value = "userdetail", method = { RequestMethod.GET, RequestMethod.POST })
	// @ResponseBody
	public String bookdetail(ModelMap model, @RequestParam Long isbn) {
		BookModel book = bookService.getBookByIsbn(isbn);
		logger.info(book);
		model.put("book", book);
		return "/book/detail";
	}

	// 跳转至用户信息页面
	@RequestMapping(value = "linktouserinfo", method = {RequestMethod.GET,RequestMethod.POST })
	// @ResponseBody
	public String userinfo() {
		return "/user/userinfo";
	}

	// 修改用户信息
	@RequestMapping(value = "changeuserinfo", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public int changeuserinfo(HttpSession session, @RequestParam String tel, @RequestParam String address,
			@RequestParam String password) {
		UserModel user = new UserModel();
		user = (UserModel) session.getAttribute("user");
		int result = 0;
		try {
			result = userService.changeUserInfo(user.getUserid(), tel, address, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(result!=0)
		{
		try {
			session.removeAttribute("user");
			user = userService.getOneUser(user.getUsername(), password, user.getUsertype());
			session.setAttribute("user", user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		}
		logger.info(result);
		return result;
	}

}
