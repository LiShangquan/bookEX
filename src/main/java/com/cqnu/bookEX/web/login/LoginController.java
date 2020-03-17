package com.cqnu.bookEX.web.login;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cqnu.bookEX.model.user.UserModel;
import com.cqnu.bookEX.service.user.UserService;


@Controller
@RequestMapping("bookEX/login")
public class LoginController {

	private Logger logger = Logger.getLogger(LoginController.class);

	@Autowired
	UserService userService;

	// 跳转至登录页面
	@RequestMapping("")
	// @ResponseBody
	public String login(Model model) {
		return "/login/login";
	}

	// 登录验证
	@RequestMapping(value = "check", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public int checkLogin(HttpSession session, @RequestParam String username, @RequestParam String pwd,
			@RequestParam int usertype) {
		UserModel user = new UserModel();
		int result = 0;
		try {
			user = userService.getOneUser(username, pwd, usertype);
			session.setAttribute("user", user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (user != null) {
			result = 1;
		}
		return result;
	}

	// 普通用户登录验证
	@RequestMapping(value = "commoncheck", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public int checkLoginCommon(HttpSession session, @RequestParam String username, @RequestParam String pwd,
			@RequestParam int usertype) {
		UserModel user = new UserModel();
		int result = 0;
		try {
			user = userService.getCommonUser(username, pwd);
			session.setAttribute("user", user);
			logger.info(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (user != null) {
			result = 1;
		}
		return result;
	}

	// 退出登录
	@RequestMapping(value = "checkout", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public int checkOut(HttpSession session) {
		UserModel user = new UserModel();
		try {
			session.removeAttribute("user");
			user = (UserModel) session.getAttribute("user");
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (user == null) {
			return 1;
		} else {
			return 0;
		}
	}
}
