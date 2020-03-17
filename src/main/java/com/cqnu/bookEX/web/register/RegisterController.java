package com.cqnu.bookEX.web.register;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cqnu.bookEX.model.user.UserModel;
import com.cqnu.bookEX.service.user.UserService;
import com.cqnu.bookEX.web.login.LoginController;

@Controller
@RequestMapping("bookEX/register")
public class RegisterController {
	
private Logger logger = Logger.getLogger(LoginController.class);
	
	@Autowired
	UserService userService;
	
	@RequestMapping("")
	//@ResponseBody
	public String refister(Model model){		
	UserModel user = userService.getUserInfo((long) 1000);	
	logger.info(user);
	model.addAttribute(user);
	return "/register/register";
	}
}
