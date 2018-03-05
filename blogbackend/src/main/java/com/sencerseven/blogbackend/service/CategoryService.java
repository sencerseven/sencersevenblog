package com.sencerseven.blogbackend.service;

import java.util.List;

import com.sencerseven.blogbackend.dto.Category;

public interface CategoryService {
	
	public Category getCategory(int id);
	public void addCategory(Category category);
	public boolean updateCategory(Category category);
	public boolean deleteCategory(Category category);
	
	public boolean saveOrUpdate(Category category);
	public List<Category> allCategory();
	
	
	

}
