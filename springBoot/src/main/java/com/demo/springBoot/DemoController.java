package com.demo.springBoot;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *说    明：           <br/>
 *创建人： zhaoky<br/>
 *时    间：2018年2月6日 下午4:31:10
 */
@Controller
public class DemoController {
	
	@RequestMapping("/welcome")    
    public ModelAndView view() {    
		ModelAndView modelAndView = new ModelAndView("/welcome");
        modelAndView.addObject("message", "Hello World!");
        modelAndView.addObject("time",  new Date());
        return modelAndView;    
    }  
}
