package com.cqnu.bookEX.web.error;

import org.springframework.boot.autoconfigure.web.ErrorController;
import org.springframework.web.bind.annotation.RequestMapping;

public class ErrorsController implements ErrorController {
	
	@Override
	public String getErrorPath() {
		// TODO Auto-generated method stub
		return null;
	}
	
	private static final String ERROR_PATH = "/error";  
	   
	 @RequestMapping(value=ERROR_PATH)  
	    public String handleError(){  
	        return "pages/404";  
	    }  
}
