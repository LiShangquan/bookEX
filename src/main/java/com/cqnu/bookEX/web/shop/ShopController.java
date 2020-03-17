package com.cqnu.bookEX.web.shop;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cqnu.bookEX.model.book.BookModel;
import com.cqnu.bookEX.model.shop.ShopModel;
import com.cqnu.bookEX.model.user.UserModel;
import com.cqnu.bookEX.service.book.BookService;
import com.cqnu.bookEX.service.common.CommonService;
import com.cqnu.bookEX.service.shop.ShopService;
import com.cqnu.bookEX.service.user.UserService;

@Controller
@RequestMapping("bookEX/shop")
public class ShopController {
	private Logger logger = Logger.getLogger(ShopController.class);
	@Autowired
	UserService userService;
	@Autowired
	BookService bookService;
	@Autowired
	ShopService shopService;
	@Autowired
	CommonService commonService;

	// 首页
	@RequestMapping(value = "/", method = { RequestMethod.GET, RequestMethod.POST })
	// @ResponseBody
	public String index(ModelMap model, HttpSession session, @RequestParam Long shopid, @RequestParam int pagenow) {
		ShopModel shop = shopService.getShopById((long) shopid);
		Map<String, Integer> pagemap = new HashMap<String, Integer>();
		pagemap = commonService.getPageInfo("bookex_book", 20, pagenow, (long) shopid, 0, 0);
		List<BookModel> books = bookService.getBookByOwner((long) shopid, 0, pagemap.get("recordnow"), 20);
		List<String> categorys = shopService.getCategoryById(shopid);
		logger.info(pagemap);
		logger.info(categorys);
		logger.info(shop);
		model.put("shop", shop);
		model.put("books", books);
		model.put("category", categorys);
		model.put("pagemap", pagemap);
		session.setAttribute("shop", shop);
		return "shop/shopindex";
	}

	// 详情
	@RequestMapping(value = "detail", method = { RequestMethod.GET, RequestMethod.POST })
	// @ResponseBody
	public String bookdetail(ModelMap model, @RequestParam Long isbn, @RequestParam Long owner,
			@RequestParam int ownertype) {
		Map<String, Long> shopmap = new HashMap<String, Long>();
		shopmap.put("owner", owner);
		shopmap.put("ownertype", (long) ownertype);
		logger.info(shopmap);
		BookModel book = bookService.getBookByIsbn(isbn);
		logger.info(book);
		model.put("book", book);
		model.put("shopmap", shopmap);
		return "/book/detail";
	}

	// 分页
	@RequestMapping(value = "page", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public Map<String, Object> page(HttpSession session, @RequestParam int pagenow) {
		int resultuser = 0;// 判断是否登录
		ShopModel shop = (ShopModel) session.getAttribute("shop");
		UserModel user = (UserModel) session.getAttribute("user");
		Map<String, Integer> pagemap = new HashMap<String, Integer>();
		pagemap = commonService.getPageInfo("bookex_book", 20, pagenow, shop.getShopid(), 0, 0);
		List<BookModel> books = bookService.getBookByOwner(shop.getShopid(), 0, pagemap.get("recordnow"), 20);
		List<String> categorys = shopService.getCategoryById(shop.getShopid());
		Map<String, Object> map = new HashMap<String, Object>();
		logger.info(pagemap);
		logger.info(categorys);
		logger.info(shop);
		logger.info(books.get(0));
		logger.info(user);
		if (user != null) {
			resultuser = 1;
		}
		map.put("user", resultuser);
		map.put("shop", shop);
		map.put("books", books);
		map.put("pagemap", pagemap);
		return map;
	}

	// 店内搜索
	@RequestMapping(value = "searchself", method = { RequestMethod.GET, RequestMethod.POST })
	// @ResponseBody
	public String searchself(ModelMap model, @RequestParam String search, @RequestParam String owner) {
		List<BookModel> books = bookService.getSearchSelf(search, Long.parseLong(owner), 0);
		logger.info(books);
		String result = "";
		if (books.isEmpty()) {
			result = "亲，没有搜索到相关内容。";
		}
		model.put("result", result);
		model.put("books", books);
		return "/searchresult/hmsearch";
	}

	// 分类搜索
	@RequestMapping(value = "categorysearch", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public Map<String, Object> categorySearch(HttpSession session, @RequestParam int pagenow,
			@RequestParam String booktype) {
		int resultuser = 0;// 判断是否登录
		System.out.println(booktype);
		logger.info(booktype);
		ShopModel shop = (ShopModel) session.getAttribute("shop");
		UserModel user = (UserModel) session.getAttribute("user");
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Integer> pagemap = new HashMap<String, Integer>();
		int typeId = bookService.getTypeId(booktype, shop.getShopid(), 0);
		pagemap = commonService.getPageInfo("bookex_book", 20, pagenow, shop.getShopid(), 0, typeId);
		List<BookModel> books = bookService.getBooksByType(booktype, shop.getShopid(), 0);
		List<String> categorys = shopService.getCategoryById(shop.getShopid());
		logger.info(pagemap);
		logger.info(categorys);
		logger.info(shop);
		logger.info(books.get(0));
		if (user != null) {
			resultuser = 1;
		}
		map.put("shop", shop);
		map.put("books", books);
		map.put("category", categorys);
		map.put("user", resultuser);
		map.put("pagemap", pagemap);
		map.put("btype", booktype);
		logger.info(map);
		return map;
	}
	
	//获取店铺信息
	@RequestMapping(value = "getshopinfo", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public ShopModel getShopInfo(@RequestParam Long shopid) {
		ShopModel shop = shopService.getShopById((long) shopid);
		logger.info(shop);
		return shop;
	}
}
