package com.sencerseven.blogbackend.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import org.hibernate.annotations.SelectBeforeUpdate;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.sencerseven.blogbackend.dao.CategoryDAO;
import com.sencerseven.blogbackend.dto.Category;

public class CategoryTestCase {

	
	private static CategoryDAO  categoryDAO;
	
	private Category category;
	
	@BeforeClass
	public static void init() {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		
		context.scan("com.sencerseven.blogbackend");
		
		context.refresh();
		
		categoryDAO = context.getBean("categoryDAO",CategoryDAO.class);
	}
	
//	@Test
//	public void addCategory() {
//		category  = new Category();
//		
//		category.setCategoryName("Teknoloji");
//		category.setCategoryDescription("Teknoloji konularını bu sayfada bulabilirsiniz");
//		category.setActive(true);
//		
//		assertEquals("Böyle bir kategori malesef eklenemedi",true, categoryDAO.addCategory(category));
//		
//	}
	
//	@Test
//	public void updateCategort() {
//		category = categoryDAO.getCategory(1);
//		category.setCategoryDescription("Teknoloji Konusu");
//		
//		assertEquals("Successfully updated", true,categoryDAO.updateCategory(category));
//	}

//	@Test
//	public void deleteCategory(){
//		category = categoryDAO.getCategory(1);
//		assertEquals("Successfully Deleted", true,categoryDAO.deleteCategory(category));
//	}
	
}
