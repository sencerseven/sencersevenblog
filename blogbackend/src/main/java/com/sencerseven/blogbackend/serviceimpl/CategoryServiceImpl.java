package com.sencerseven.blogbackend.serviceimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sencerseven.blogbackend.dao.CategoryDAO;
import com.sencerseven.blogbackend.dto.Category;
import com.sencerseven.blogbackend.funtions.BlogBackendFunctions;
import com.sencerseven.blogbackend.service.CategoryService;

@Service("categoryService")
public class CategoryServiceImpl implements CategoryService{

	@Autowired
	CategoryDAO categoryDAO;
	
	@Override
	@Transactional
	public Category getCategory(int id) {
		// TODO Auto-generated method stub
		return categoryDAO.getCategory(id);
	}

	@Override
	@Transactional
	public boolean addCategory(Category category) {
		
		category.setCategoryUrl(BlogBackendFunctions.toPrettyURL(category.getCategoryName(),null));
		
		return categoryDAO.addCategory(category);
	}

	@Override
	@Transactional
	public boolean updateCategory(Category category) {
		// TODO Auto-generated method stub
		return categoryDAO.updateCategory(category);
	}

	@Override
	@Transactional
	public boolean deleteCategory(Category category) {
		// TODO Auto-generated method stub
		return categoryDAO.deleteCategory(category);
	}

	@Override
	@Transactional
	public boolean saveOrUpdate(Category category) {
		return categoryDAO.saveOrUpdate(category);
	}

	@Override
	@Transactional
	public List<Category> allCategory() {
		// TODO Auto-generated method stub
		return categoryDAO.allCategory();
	}

}
