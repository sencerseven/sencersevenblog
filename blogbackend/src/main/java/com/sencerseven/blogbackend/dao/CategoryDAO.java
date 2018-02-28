package com.sencerseven.blogbackend.dao;

import java.util.List;

import com.sencerseven.blogbackend.dto.Category;

public interface CategoryDAO {
	
	public Category getCategory(int id);
	public boolean addCategory(Category category);
	public boolean updateCategory(Category category);
	public boolean deleteCategory(Category category);
	
	public boolean saveOrUpdate(Category category);
	public List<Category> allCategory();
	
	
	

}
