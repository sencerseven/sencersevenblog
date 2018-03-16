package com.sencerseven.blog.controller.advice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.sencerseven.blog.controller.PageController;
import com.sencerseven.blogbackend.dto.Category;
import com.sencerseven.blogbackend.dto.Posts;
import com.sencerseven.blogbackend.service.CategoryService;
import com.sencerseven.blogbackend.service.PostsService;

@ControllerAdvice(basePackages="com.sencerseven.blog.controller",basePackageClasses=PageController.class)
public class GlobalModelAdvice {

	@Autowired
	PostsService postsService;
	
	@Autowired
	CategoryService categoryService;
	
	@ModelAttribute(name="getTrendPosts")
	public List<Posts> getTrendPosts(){
		return postsService.getTrendPosts(3, 0,null);
	}
	
	@ModelAttribute(name="allCategoryAdvice")
	public List<Category> getAllCategory(){
		return categoryService.allCategory();
	}
}
