package com.sencerseven.blogbackend.serviceimpl;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sencerseven.blogbackend.dao.CategoryDAO;
import com.sencerseven.blogbackend.dto.Category;
import com.sencerseven.blogbackend.dto.Posts;
import com.sencerseven.blogbackend.dto.Widget;
import com.sencerseven.blogbackend.funtions.BlogBackendFunctions;
import com.sencerseven.blogbackend.service.CategoryService;

@Service("categoryService")
public class CategoryServiceImpl implements CategoryService{

	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public Category getCategory(int id) {
		// TODO Auto-generated method stub
		return categoryDAO.getCategory(id);
	}

	@Override
	@Transactional(rollbackOn = Exception.class)
	public void addCategory(Category category) {
		 categoryDAO.addCategory(category);
		category.setCategoryUrl(BlogBackendFunctions.toPrettyURL(category.getCategoryName(),category.getId()));

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
		 categoryDAO.saveOrUpdate(category);
			category.setCategoryUrl(BlogBackendFunctions.toPrettyURL(category.getCategoryName(),category.getId()));
			return true;
	}

	@Override
	@Transactional
	public List<Category> allCategory() {
		// TODO Auto-generated method stub
		return categoryDAO.allCategory();
	}
	
	
	@Override
	@Transactional
	public Category getUrlName(String urlName) {
		String queryString = "FROM Category WHERE category_url = :urlName";
		
		try {
		Query<Category> query = 	sessionFactory.getCurrentSession().createQuery(queryString,Category.class);
		query.setParameter("urlName", urlName);
		return query.getSingleResult();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	
	@Override
	@Transactional
	public List<Category> allCategoryWithLimitedPosts(int limit, int startAt){
		List<Category> categories = categoryDAO.allCategory();
		 
		
		for(Category tempCategory : categories) {
			try {
				
				Query<Posts> posts = sessionFactory.getCurrentSession().createQuery("FROM Posts p where p.category.id = :categoryId",Posts.class);
				posts.setParameter("categoryId", tempCategory.getId());
				posts.setMaxResults(limit);
				posts.setFirstResult(startAt);
				List<Posts> listPosts = posts.getResultList();
				for(Posts tempPost : listPosts) {
					Hibernate.initialize(tempPost.getImages());
					Hibernate.initialize(tempPost.getComment());
					Hibernate.initialize(tempPost.getWidgets());
					
				}
				tempCategory.setPosts(listPosts);
				
			}catch (Exception e) {
				// TODO: handle exception
			}
		}
			
		
		return categories;
	}
	

}
