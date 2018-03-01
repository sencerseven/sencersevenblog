package com.sencerseven.blogbackend.test;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.sencerseven.blogbackend.dao.CategoryDAO;
import com.sencerseven.blogbackend.dao.PostsDAO;
import com.sencerseven.blogbackend.dto.Category;
import com.sencerseven.blogbackend.dto.Posts;
import com.sencerseven.blogbackend.service.PostsService;

public class PostsTestCase {

	static AnnotationConfigApplicationContext context;
	
	static PostsDAO postsDAO;
	
	
	static CategoryDAO categoryDAO;
	
	
	static PostsService postsService;
	
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		
		context.scan("com.sencerseven.blogbackend");
		
		context.refresh();
		
		categoryDAO = context.getBean("categoryDAO",CategoryDAO.class);
		
		postsService = context.getBean("postsService",PostsService.class);
		
	}
//	@Test
//	public void addPosts() {
//		Posts posts = new Posts();
//		posts.setTitle("SAMSUNG TELEFONLAR");
//		posts.setContent("Samsung telefonlarda günümüzde acaip bir talep var");
//		
//		Category category = new Category();
//		category.setActive(true);
//		category.setCategoryDescription("telefonlar burada");
//		category.setCategoryName("TELEFON");
//		
//		posts.setCategory(category);
//		
//		List<Posts> postList = new ArrayList<>();
//		postList.add(posts);
//
//		category.setPosts(postList);
//		categoryDAO.addCategory(category);
//		
//		
//	}

//	@Test
//	public void newPostAdd() {
//		Posts post = new Posts();
//		post.setContent("Iphone x ÇIKTI insanlar çıldırmış olmalı 3");
//		post.setTitle("Iphone X");
//		post.setCategory(categoryDAO.getCategory(1));
//		post.setCreated_date(new Date());
//		postsService.addPosts(post);
//		
//		
//		
//	}
	
	@Test
	public void getLimitForPost() {
		postsService.getLimitLastPosts(3, 0);
	}
	
//	@Test
//	public void uniqueResult() {
//		System.out.println(postsService.getLastPosts().getTitle());
//	}
	
}
