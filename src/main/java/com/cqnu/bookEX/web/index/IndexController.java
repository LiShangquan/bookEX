package com.cqnu.bookEX.web.index;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cqnu.bookEX.model.book.BookModel;
import com.cqnu.bookEX.model.messageboard.MessageBoardModel;
import com.cqnu.bookEX.model.shop.ShopModel;
import com.cqnu.bookEX.model.user.UserModel;
import com.cqnu.bookEX.service.book.BookService;
import com.cqnu.bookEX.service.common.CommonService;
import com.cqnu.bookEX.service.shop.ShopService;
import com.cqnu.bookEX.service.user.UserService;

@Controller
@RequestMapping("bookEX")
public class IndexController {

	private Logger logger = Logger.getLogger(IndexController.class);

	@Autowired
	UserService userService;

	@Autowired
	ShopService shopService;

	@Autowired
	BookService bookService;

	@Autowired
	CommonService commonService;

	@RequestMapping("/")
	// @ResponseBody
	public String index(ModelMap modelmap) {
		List<ShopModel> shops = shopService.getShopList();
		logger.info(shops);
		List<BookModel> latestBooks = bookService.getLatestBook();
		logger.info(latestBooks);
		List<BookModel> personalBooks = bookService.getPersonalBooks(1);
		logger.info(personalBooks);
		modelmap.put("shop", shops);
		modelmap.put("latestbooks", latestBooks);
		modelmap.put("pbooks", personalBooks);
		return "/index/index";
	}

	@RequestMapping(value = "search", method = { RequestMethod.GET, RequestMethod.POST })
	// @ResponseBody
	public String search(ModelMap model, @RequestParam String search) {
		List<BookModel> books = bookService.getSearchList(search);
		logger.info(books);
		List<ShopModel> shops = shopService.getSearchShopList(search);
		logger.info(shops);
		String result = "";
		if (books.isEmpty() && shops.isEmpty()) {
			result = "亲，没有搜索到相关内容。";
		}
		model.put("result", result);
		model.put("books", books);
		model.put("shops", shops);
		return "/searchresult/hmsearch";
	}

	@RequestMapping("test")
	@ResponseBody
	public UserModel test(Model model) {
		UserModel user = userService.getUserInfo((long) 1000);
		logger.info(user);
		model.addAttribute(user);
		return user;
	}

	// 页面跳转至用户求书信息
	@RequestMapping(value = "linktogetbook", method = { RequestMethod.GET, RequestMethod.POST })
	// @ResponseBody
	public String shopAdminLinkToGetBook(HttpSession session, ModelMap model) {
		List<MessageBoardModel> msgs = new ArrayList<MessageBoardModel>();
		try {
			msgs = userService.getAllFindBook();
			model.put("msgs", msgs);
			logger.info(msgs);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/index/getbook";
	}

	// 页面跳转至用户求书信息
	@RequestMapping(value = "linktoforweb")
	// @ResponseBody
	public String LinkToForWeb(HttpSession session, ModelMap model) {
		return "/forweb/forweb";
	}

	// 页面跳转至用户求书信息
	@RequestMapping(value = "linktodonate")
	// @ResponseBody
	public String LinkToDonate(HttpSession session, ModelMap model) {
		return "/donate/donate";
	}

}
