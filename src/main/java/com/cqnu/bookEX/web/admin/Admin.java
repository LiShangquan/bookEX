package com.cqnu.bookEX.web.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cqnu.bookEX.service.user.UserService;

@Controller
@RequestMapping("bookEX/admin")
public class Admin {

	//private Logger logger = Logger.getLogger(LoginController.class);

	@Autowired
	UserService userService;

	// 管理员登录界面
	@RequestMapping("")
	// @ResponseBody
	public String login() {
		return "/login/adminlogin";
	}

	// 管理员登录成功跳转页面
	@RequestMapping("adminsuccess")
	// @ResponseBody
	public String loginSuccess() {
		return "/admin/adminindex";
	}

}
