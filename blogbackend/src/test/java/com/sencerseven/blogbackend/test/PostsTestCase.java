package com.sencerseven.blogbackend.test;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.sencerseven.blogbackend.dao.CategoryDAO;
import com.sencerseven.blogbackend.dao.PostsDAO;
import com.sencerseven.blogbackend.dto.Category;
import com.sencerseven.blogbackend.dto.Posts;

public class PostsTestCase {

	static AnnotationConfigApplicationContext context;
	
	static PostsDAO postsDAO;
	
	
	static CategoryDAO categoryDAO;
	
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		
		context.scan("com.sencerseven.blogbackend");
		
		context.refresh();
		
		categoryDAO = context.getBean("categoryDAO",CategoryDAO.class);
		
		postsDAO = context.getBean("postsDAO",PostsDAO.class);
		
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
	
	@Test
	public void newPostAdd() {
		Category category = categoryDAO.getCategory(1);
		Posts post = new Posts();
		post.setContent("Iphone x ÇIKTI insanlar çıldırmış olmalı");
		post.setTitle("Iphone X");
		post.setCategory(category);
		
		List<Posts> postList = new ArrayList<>();
		postList.add(post);
		category.setPosts(postList);
		categoryDAO.addCategory(category);
	}
	
	
}
