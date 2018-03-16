package com.sencerseven.blog.controller.advice;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

import com.sencerseven.blogbackend.dao.CategoryDAO;
import com.sencerseven.blogbackend.dao.PostsDAO;
import com.sencerseven.blogbackend.dto.Category;
import com.sencerseven.blogbackend.dto.Posts;
import com.sencerseven.blogbackend.service.CategoryService;
import com.sencerseven.blogbackend.service.PostsService;

@ControllerAdvice
public class GlobalController {

	
//	@ModelAttribute(name="allCategories")
//	public List<Category> getAllCategories(){
//		return categoryService.allCategory();
//	}
//	
//	@ModelAttribute(name="getSidebarPosts")
//	public List<Posts> getSidebarPosts() {
//		return postsService.getLimitLastPosts(3, 0);
//	}
	
	@ExceptionHandler(NoHandlerFoundException.class)
	public ModelAndView handlerNoFoundException() {
		ModelAndView mv = new ModelAndView("error");
		mv.addObject("title", "Page is Not Found!");
		mv.addObject("message", "This Page is not Available");
		return mv;
		
	}
	
	@ExceptionHandler(Exception.class)
	public ModelAndView productNotFoundException(Exception e) {
		ModelAndView mv = new ModelAndView("error");
		StringWriter sw = new StringWriter();
		PrintWriter pw = new PrintWriter(sw);
		
		e.printStackTrace(pw);
		
		
		
		mv.addObject("title", "Page is Not Found!");
		mv.addObject("message", sw.toString());
		return mv;
		
	}
	
}
