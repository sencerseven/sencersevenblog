package com.sencerseven.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {

	@RequestMapping(value = {"/","/index","/home"})
	public ModelAndView indexPage() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "home");
		mv.addObject("userClickHomePage",true);

		return mv;
	}
	
	@RequestMapping(value = {"/contact"})
	public ModelAndView contactPage() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "contact");
		mv.addObject("userClickContactPage",true);

		return mv;
	}
}
