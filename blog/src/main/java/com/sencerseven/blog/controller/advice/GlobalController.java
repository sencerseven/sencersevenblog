package com.sencerseven.blog.controller.advice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.sencerseven.blogbackend.dao.CategoryDAO;
import com.sencerseven.blogbackend.dto.Category;

@ControllerAdvice
public class GlobalController {

	@Autowired
	CategoryDAO categoryDAO;
	
	@ModelAttribute(name="allCategories")
	public List<Category> getAllCategories(){
		return categoryDAO.allCategory();
	}
}
