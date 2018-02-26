package com.sencerseven.blogbackend.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sencerseven.blogbackend.dao.CategoryDAO;
import com.sencerseven.blogbackend.dto.Category;

@Repository("categoryDAO")
@Transactional
public class CategoryDAOImpl implements CategoryDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public Category getCategory(int id) {
		try {
			
			return sessionFactory.getCurrentSession().get(Category.class, id);
		}catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	@Override
	public boolean addCategory(Category category) {
		try {
			sessionFactory.getCurrentSession().persist(category);
			return true;
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		return false;
	}

	@Override
	public boolean updateCategory(Category category) {
		try {
			sessionFactory.getCurrentSession().update(category);
			return true;
		}catch (Exception e) {
			
		}

		
		return false;
	}

	@Override
	public boolean deleteCategory(Category category) {
		try {
			sessionFactory.getCurrentSession().delete(category);
			return true;
		}catch (Exception e) {
			
		}
		return false;
	}

	@Override
	public List<Category> allCategory() {
		try {
			return sessionFactory
						.getCurrentSession()
						.createQuery("FROM Category", Category.class)
						.getResultList();
		}catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

}
