package com.sencerseven.blog.controller;

import java.util.List;

import javax.jws.WebParam.Mode;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sencerseven.blogbackend.dto.Category;
import com.sencerseven.blogbackend.dto.Posts;
import com.sencerseven.blogbackend.service.CategoryService;
import com.sencerseven.blogbackend.service.PostsService;

@Controller
@RequestMapping("/category")
public class CategoryController {

	@Autowired
	PostsService postsService;
	
	@Autowired
	CategoryService categoryService;
	
	
	@RequestMapping("/{categoryName}")
	public ModelAndView indexPage(@PathVariable("categoryName")String categoryName,@RequestParam(name="page",required=false)Integer page) {
		if(page == null)
			page = 0;
		
		int SizeOfPage = 10;
		
		ModelAndView mv = new ModelAndView("page");
		
		Category category = categoryService.getUrlName(categoryName);
		
		Long countPost = postsService.countPost(category);
		
		
		
		List<Posts> postsList = postsService.getLimitLastPostsByCategory(category, SizeOfPage, (page * SizeOfPage));
		
		System.out.println(countPost);
		
		mv.addObject("title", "Category Page");
		mv.addObject("userClickCategoryDetail", true);
		
		mv.addObject("postsList", postsList);
		mv.addObject("category", category);
		
		return mv;
		
	}
	
}
