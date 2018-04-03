package com.sencerseven.blog.controller;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.ParseConversionEvent;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sencerseven.blog.controller.advice.NotFoundException;
import com.sencerseven.blog.functions.BlogFunctions;
import com.sencerseven.blog.model.CategoryModel;
import com.sencerseven.blogbackend.dto.Category;
import com.sencerseven.blogbackend.dto.Comment;
import com.sencerseven.blogbackend.dto.Posts;
import com.sencerseven.blogbackend.service.CategoryService;
import com.sencerseven.blogbackend.service.CommentService;
import com.sencerseven.blogbackend.service.PostsService;

@Controller
public class PageController {

	@Autowired
	PostsService postService;
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@RequestMapping(value = {"/","/index","/home"})
	public ModelAndView indexPage() {
		ModelAndView mv = new ModelAndView("page");
		
		mv.addObject("title", "home");
		mv.addObject("userClickHomePage",true);
		
		
		List<CategoryModel> categoryModelList = new ArrayList<CategoryModel>();

		List<Category> categories = categoryService.allCategoryWithLimitedPosts(5, 0);
		
		List<Posts> posts = postService.getSliderPost(0, 5);
		
		List<Posts> featuredPost = postService.featuredPost(0,10);
		
		
		
		for(Category tempCategory : categories) {
			CategoryModel categoryModel = new CategoryModel();
			categoryModel.setCategory(tempCategory);
			categoryModel.setPopulerPosts(postService.getTrendPosts(6, 0, tempCategory.getId()));
			categoryModelList.add(categoryModel);
		}
		
		
		
		if(categories != null) {
			mv.addObject("categoryModelList", categoryModelList);
		}
		mv.addObject("featuredPosts", featuredPost);
		mv.addObject("sliderPosts", posts);
		
		String pass = bcryptPasswordEncoder.encode("123");
		System.out.println(pass);
		return mv;
	}
	
	@RequestMapping(value = {"/contact"})
	public ModelAndView contactPage() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "contact");
		mv.addObject("userClickContactPage",true);

		return mv;
	}
	
	@RequestMapping(value = {"/login"})
	public ModelAndView loginPage(@RequestParam(name="error",required = false)String error,
			@RequestParam(name="logout",required = false)String logout) {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "login");
		mv.addObject("userClickLoginPage",true);

		return mv;
	}
	
	@RequestMapping("/perform-logout")
	public String logout(HttpServletRequest httpServletRequest,HttpServletResponse httpServletResponse) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		
		if(authentication != null)
			new SecurityContextLogoutHandler().logout(httpServletRequest, httpServletResponse, authentication);
		
		return "redirect:/";
	}
	

}
