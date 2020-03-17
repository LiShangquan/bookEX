package com.cqnu.bookEX;

import org.apache.log4j.Logger;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.Ordered;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class DefaultView extends WebMvcConfigurerAdapter {
	private Logger logger = Logger.getLogger(DefaultView.class);
	@Override
    public void addViewControllers( ViewControllerRegistry registry ) {
        registry.addViewController( "bookEX" ).setViewName( "forward:/index/index.jsp" );
        registry.setOrder( Ordered.HIGHEST_PRECEDENCE );
        logger.info(registry);
        super.addViewControllers( registry );
    } 
}
