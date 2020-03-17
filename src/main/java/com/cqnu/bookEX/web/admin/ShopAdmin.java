package com.cqnu.bookEX.web.admin;

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

import com.cqnu.bookEX.model.book.AddBookModel;
import com.cqnu.bookEX.model.book.BookModel;
import com.cqnu.bookEX.model.common.CategoryModel;
import com.cqnu.bookEX.model.order.OrderModel;
import com.cqnu.bookEX.model.shop.ShopModel;
import com.cqnu.bookEX.model.user.UserModel;
import com.cqnu.bookEX.service.book.BookService;
import com.cqnu.bookEX.service.common.CommonService;
import com.cqnu.bookEX.service.shop.ShopService;
import com.cqnu.bookEX.service.user.UserService;

@Controller
@RequestMapping("bookEX/shopadmin")
public class ShopAdmin {
	private Logger logger = Logger.getLogger(ShopAdmin.class);

	@Autowired
	UserService userService;
	@Autowired
	BookService bookService;
	@Autowired
	ShopService shopService;
	@Autowired
	CommonService commonService;

	// 通过Spring的autowired注解获取spring默认配置的request
	@Autowired
	private HttpServletRequest request;

	// 管理员登录界面
	@RequestMapping("")
	// @ResponseBody
	public String login() {
		return "/login/adminlogin";
	}

	// 登录验证
	@RequestMapping(value = "logincheck", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public int checkLogin(HttpSession session, @RequestParam String username, @RequestParam String pwd,
			@RequestParam int usertype) {
		UserModel user = new UserModel();
		int result = 0;
		try {
			user = userService.getOneUser(username, pwd, usertype);
			session.setAttribute("admin", user);
			logger.info(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (user != null) {
			result = 1;
			ShopModel shop = new ShopModel();
			shop = shopService.getShopByAdmin(user.getUserid());
			session.setAttribute("shopadmin", shop);
		}
		return result;
	}

	// 管理员登录成功跳转页面
	@RequestMapping("shopadminsuccess")
	// @ResponseBody
	public String loginSuccess() {
		return "/shopadmin/shopadminindex";
	}

	// 退出登录
	@RequestMapping(value = "checkout", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public int checkOut(HttpSession session) {
		UserModel user = new UserModel();
		int result = 0;
		try {
			session.removeAttribute("admin");
			user = (UserModel) session.getAttribute("admin");
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (user == null) {
			result = 1;
		}
		return result;
	}

	// 添加图书
	@RequestMapping(value = "/addbook", method = { RequestMethod.GET, RequestMethod.POST })
	// @ResponseBody
	public String addbook(HttpSession session, ModelMap model, MultipartFile file, AddBookModel book) {
		Map<String, Object> fileMap = new HashMap<String, Object>();
		ShopModel shop = new ShopModel();
		shop = (ShopModel) session.getAttribute("shopadmin");
		int result = 0;
		int resultFile = 0;
		List<CategoryModel> wornLevel = commonService.getWornLevel();
		model.put("wornlevel", wornLevel);
		List<CategoryModel> category = shopService.getCategory(shop.getShopid());
		model.put("category", category);
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
		if (shop != null) {
			book.setBookowner(shop.getShopid());
		}
		try {
			result = bookService.addBook(book);
			if (result != 0) {
				model.put("result", result);
			}
		} catch (IllegalStateException e) {
			e.printStackTrace();
		}
		logger.info(book);
		return "/shopadmin/addbook";
	}

	// test
	@SuppressWarnings("deprecation")
	@RequestMapping("test")
	// @ResponseBody
	public String test() {
		logger.info(request.getPathInfo());
		logger.info(request.getRealPath("img/book"));
		logger.info(request.getServletPath());
		return "/shopadmin/test";
	}

	// 页面跳转跳转至增加图书
	@RequestMapping(value = "linktoaddbook", method = { RequestMethod.GET, RequestMethod.POST })
	// @ResponseBody
	public String shopAdminLinkToAddBook(HttpSession session, ModelMap model) {
		UserModel user = new UserModel();
		ShopModel shop = new ShopModel();
		shop = (ShopModel) session.getAttribute("shopadmin");
		List<String> categorys = shopService.getCategoryById(shop.getShopid());
		model.put("category", categorys);
		logger.info(categorys);
		List<CategoryModel> wornLevel = commonService.getWornLevel();
		model.put("wornlevel", wornLevel);
		List<CategoryModel> category = shopService.getCategory(shop.getShopid());
		model.put("category", category);
		try {
			user = (UserModel) session.getAttribute("admin");
			logger.info(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (user == null) {
			return "/error/error";
		} else {
			return "/shopadmin/addbook";
		}
	}

	// 店铺申请跳转页
	@RequestMapping(value = "applyshop", method = { RequestMethod.GET, RequestMethod.POST })
	// @ResponseBody
	public String applyShop() {
		return "/shop/applyshop";
	}

	// 添加店铺
	@RequestMapping(value = "/addshop", method = { RequestMethod.GET, RequestMethod.POST })
	// @ResponseBody
	public String addshop(HttpSession session, ModelMap model, @RequestParam MultipartFile[] files, ShopModel shop) {
		// 如果只是上传一个文件，则只需要MultipartFile类型接收文件即可，而且无需显式指定@RequestParam注解
		// 如果想上传多个文件，那么这里就要用MultipartFile[]类型来接收文件，并且还要指定@RequestParam注解
		// 并且上传多个文件时，前台表单中的所有<input
		// type="file"/>的name都应该是myfiles，否则参数里的myfiles无法获取到所有上传的文件
		Map<String, Object> logoMap = new HashMap<String, Object>();
		Map<String, Object> wPayMap = new HashMap<String, Object>();
		Map<String, Object> aPayMap = new HashMap<String, Object>();
		UserModel user = new UserModel();
		user = (UserModel) session.getAttribute("user");
		int result = 0;
		int resultUser = 0;
		// 文件上传路径
		@SuppressWarnings("deprecation")
		String filePathLogo = request.getRealPath("img/shop/logo/");
		@SuppressWarnings("deprecation")
		String filePathAPay = request.getRealPath("img/shop/apaypic/");
		@SuppressWarnings("deprecation")
		String filePathWPay = request.getRealPath("img/shop/wpaypic/");
		logger.info(shop);
		logger.info(files);
		int i = 0;
		for (MultipartFile file : files) {
			if (file.isEmpty()) {
				System.out.println("文件未上传");
			}
			if (i == 0) {
				logoMap = commonService.fileup(file, filePathLogo);
				logger.info(logoMap);
				if ((Integer) logoMap.get("result") == 1) {
					shop.setShoplogo(logoMap.get("filename").toString());
				}

			}
			if (i == 1) {
				wPayMap = commonService.fileup(file, filePathWPay);
				logger.info(wPayMap);
				if ((Integer) wPayMap.get("result") == 1) {
					shop.setPaypic2(wPayMap.get("filename").toString());
				}
			}
			if (i == 2) {
				aPayMap = commonService.fileup(file, filePathAPay);
				logger.info(aPayMap);
				if ((Integer) aPayMap.get("result") == 1) {
					shop.setPaypic1(aPayMap.get("filename").toString());
				}
			}
			i++;
		}
		shop.setShopadmin1((long) user.getUserid());
		logger.info(shop);
		result = shopService.addShop(shop);
		resultUser = userService.updateUserType((long) user.getUserid());
		if (result == 1 && resultUser == 1) {
			return "/login/adminlogin";
		} else {
			return "/error/error";
		}
	}

	// 页面跳转跳转至修改店铺基本信息
	@RequestMapping(value = "linktoshopcategory", method = { RequestMethod.GET, RequestMethod.POST })
	// @ResponseBody
	public String shopAdminLinkToShopCategory(HttpSession session, ModelMap model) {
		UserModel user = new UserModel();
		ShopModel shop = new ShopModel();
		shop = (ShopModel) session.getAttribute("shopadmin");
		List<CategoryModel> categorys = shopService.getCategory(shop.getShopid());
		model.put("category", categorys);
		logger.info(categorys);
		try {
			user = (UserModel) session.getAttribute("admin");
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (user == null) {
			return "/error/error";
		} else {
			return "/shopadmin/shopcategory";
		}
	}

	// 增加店铺图书分类
	@RequestMapping(value = "addcategory", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public int addCategory(HttpSession session, @RequestParam String description) {
		logger.info(description);
		int result = 0;
		ShopModel shop = new ShopModel();
		shop = (ShopModel) session.getAttribute("shopadmin");
		result = commonService.addCategory(shop.getShopid(), description);
		if (result != 0) {
			return 1;
		} else {
			return 0;
		}
	}

	// 页面跳转跳转至店铺未处理订单信息
	@RequestMapping(value = "linktoshoporder", method = { RequestMethod.GET, RequestMethod.POST })
	// @ResponseBody
	public String shopAdminLinkToShopOrder(HttpSession session, ModelMap model) {
		UserModel user = new UserModel();
		ShopModel shop = new ShopModel();
		List<OrderModel> orders = new ArrayList<OrderModel>();
		int result = 0;
		shop = (ShopModel) session.getAttribute("shopadmin");
		try {
			user = (UserModel) session.getAttribute("admin");
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			orders = shopService.getShopOrder(shop.getShopid(), 0);// 0
																	// 未处理
			if (orders.size() != 0) {
				model.put("order", orders);
				result = 1;
			}
			model.put("result", result);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (user == null) {
			return "/error/error";
		} else {
			return "/shopadmin/shoporder";
		}
	}

	// 处理单个订单
	@RequestMapping(value = "dealorder", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public int dealorder(HttpSession session, @RequestParam Long orderid) {
		UserModel user = new UserModel();
		try {
			user = (UserModel) session.getAttribute("admin");
		} catch (Exception e) {
			e.printStackTrace();
		}
		int result = 0;
		result = shopService.updateOrder(orderid, user.getUserid());
		if (result != 0) {
			return 1;
		} else {
			return 0;
		}
	}

	// 页面跳转跳转至店铺已处理订单信息
	@RequestMapping(value = "linktoshopdealedorder", method = { RequestMethod.GET, RequestMethod.POST })
	// @ResponseBody
	public String shopAdminLinkToShopDealedOrder(HttpSession session, ModelMap model) {
		UserModel user = new UserModel();
		ShopModel shop = new ShopModel();
		int result = 0;
		shop = (ShopModel) session.getAttribute("shopadmin");
		try {
			user = (UserModel) session.getAttribute("admin");
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			List<OrderModel> orders = shopService.getShopOrder(shop.getShopid(), 1);// 1
																					// 已处理
			logger.info(orders);
			if (orders != null) {
				model.put("order", orders);
				result = 1;
			}
			model.put("result", result);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (user == null) {
			return "/error/error";
		} else {
			return "/shopadmin/shopdealedorder";
		}
	}

	// 跳转至店铺管理员查看图书信息页面
	@RequestMapping(value = "linktoshopbookinfo", method = { RequestMethod.GET, RequestMethod.POST })
	// @ResponseBody
	public String usershopbook(HttpSession session, ModelMap model) {
		ShopModel shop = new ShopModel();
		shop = (ShopModel) session.getAttribute("shopadmin");
		logger.info(shop);
		try {
			List<BookModel> books = bookService.getBookByOwner(shop.getShopid(), 0, 0, 100);
			model.put("books", books);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/shopadmin/shopbook";
	}

	// 跳转至店铺管理员修改店铺logo页面
	@RequestMapping(value = "linktoshopchangelogo", method = { RequestMethod.GET, RequestMethod.POST })
	// @ResponseBody
	public String changeshoplogo(HttpSession session, ModelMap model) {
		ShopModel shop = new ShopModel();
		shop = (ShopModel) session.getAttribute("shopadmin");
		logger.info(shop);
		return "/shopadmin/shoplogo";
	}

	// 修改店铺logo
	@RequestMapping(value = "/changelogo", method = { RequestMethod.GET, RequestMethod.POST })
	// @ResponseBody
	public String changelogodeal(HttpSession session, ModelMap model, MultipartFile file) {
		Map<String, Object> fileMap = new HashMap<String, Object>();
		ShopModel shop = new ShopModel();
		String fileName = "";
		shop = (ShopModel) session.getAttribute("shopadmin");
		int resultFile = 0;
		int result = 0;
		try {
			if (file.isEmpty()) {
				return "/error/error";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 文件上传路径
		@SuppressWarnings("deprecation")
		String filePath = request.getRealPath("img/shop/logo/");
		fileMap = commonService.fileup(file, filePath);
		resultFile = (Integer) fileMap.get("result");
		if (resultFile == 1) {
			fileName = fileMap.get("filename").toString();
			shop.setShoplogo(fileName);
			logger.info(fileName);
			session.removeAttribute("shopadmin");
			session.setAttribute("shopadmin", shop);
			try {
				result = shopService.changeLogo(shop.getShopid(), fileName);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if (result != 0) {
			return "/shopadmin/shoplogo";
		} else {
			return "/error/error";
		}
	}

	// 跳转至店铺已售罄图书页面
	@RequestMapping(value = "linktoshopoutbookinfo", method = { RequestMethod.GET, RequestMethod.POST })
	// @ResponseBody
	public String shopOutBookInfo(HttpSession session, ModelMap model) {
		ShopModel shop = new ShopModel();
		shop = (ShopModel) session.getAttribute("shopadmin");
		logger.info(shop);
		try {
			List<BookModel> books = bookService.getOutBooks(shop.getShopid(), 0, 0, 100);
			model.put("books", books);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/shopadmin/outbook";
	}

	// 查看图书详情
	@RequestMapping(value = "bookdetail", method = { RequestMethod.GET, RequestMethod.POST })
	// @ResponseBody
	public String bookdetail(ModelMap model, @RequestParam Long isbn) {
		Map<String, Long> shopmap = new HashMap<String, Long>();
		logger.info(shopmap);
		BookModel book = bookService.getBookByIsbn(isbn);
		model.put("book", book);
		return "/shopadmin/bookdetail";
	}

	// 查看图书详情
	@RequestMapping(value = "changebookdetail", method = { RequestMethod.GET, RequestMethod.POST })
	// @ResponseBody
	public String changebookdetail(ModelMap model, @RequestParam Long isbn) {
		Map<String, Long> shopmap = new HashMap<String, Long>();
		logger.info(shopmap);
		BookModel book = bookService.getBookByIsbn(isbn);
		model.put("book", book);
		return "/shopadmin/changebookinfo";
	}

	// 修改图书封面
	@RequestMapping(value = "changebookmark", method = { RequestMethod.GET, RequestMethod.POST })
	// @ResponseBody
	public String changebookmark(HttpSession session, ModelMap model, MultipartFile file, @RequestParam Long isbn) {
		Map<String, Object> fileMap = new HashMap<String, Object>();
		String fileName = "";
		int resultFile = 0;
		int result = 0;
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
			fileName = fileMap.get("filename").toString();
			logger.info(fileName);
			try {
				result = bookService.changeBookMark(isbn, fileName);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if (result != 0) {
			BookModel book = bookService.getBookByIsbn(isbn);
			model.put("book", book);
			return "/shopadmin/bookdetail";
		} else {
			return "/error/error";
		}
	}

	// 修改图书封面
	@RequestMapping(value = "changebookinfo", method = { RequestMethod.GET, RequestMethod.POST })
	// @ResponseBody
	public String changebookinfo(HttpSession session, ModelMap model, BookModel book) {
		int result = 0;
		try {
			result = bookService.changeBookInfo(book);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (result != 0) {
			BookModel bookone = bookService.getBookByIsbn(book.getIsbn());
			model.put("book", bookone);
			return "/shopadmin/bookdetail";
		} else {
			return "/error/error";
		}
	}

	// 搜索本店图书
	@RequestMapping(value = "searchselfbook", method = { RequestMethod.GET, RequestMethod.POST })
	// @ResponseBody
	public String searchself(HttpSession session,ModelMap model, String searchcontext) {
		ShopModel shop=new ShopModel();
		shop=(ShopModel) session.getAttribute("shopadmin");
		List<BookModel> books = bookService.getSearchSelf(searchcontext, shop.getShopid(), 0);
		logger.info(books);
		model.put("books", books);
		return "/shopadmin/shopbook";
	}

}
