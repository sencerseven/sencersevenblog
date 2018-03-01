package com.sencerseven.blog.controller.advice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.sencerseven.blogbackend.dao.CategoryDAO;
import com.sencerseven.blogbackend.dao.PostsDAO;
import com.sencerseven.blogbackend.dto.Category;
import com.sencerseven.blogbackend.dto.Posts;
import com.sencerseven.blogbackend.service.PostsService;

@ControllerAdvice
public class GlobalController {

	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	PostsService postsService;
	
	@ModelAttribute(name="allCategories")
	public List<Category> getAllCategories(){
		return categoryDAO.allCategory();
	}
	
	@ModelAttribute(name="getSidebarPosts")
	public List<Posts> getSidebarPosts() {
		return postsService.getLimitLastPosts(3, 0);
	}
}
