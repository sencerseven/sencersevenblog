package com.sencerseven.blogbackend.test;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.sencerseven.blogbackend.dao.CategoryDAO;
import com.sencerseven.blogbackend.dao.PostsDAO;
import com.sencerseven.blogbackend.dto.Category;
import com.sencerseven.blogbackend.dto.Posts;
import com.sencerseven.blogbackend.service.CategoryService;
import com.sencerseven.blogbackend.service.ImagesService;
import com.sencerseven.blogbackend.service.PostsService;

public class PostsTestCase {

	static AnnotationConfigApplicationContext context;
	
	static PostsDAO postsDAO;
	
	
	static CategoryService categoryService;
	
	
	static PostsService postsService;
	
	static ImagesService imagesService;
	
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		
		context.scan("com.sencerseven.blogbackend");
		
		context.refresh();
		
		postsService = context.getBean("postsService",PostsService.class);
		categoryService = context.getBean("categoryService",CategoryService.class);
		imagesService = context.getBean("imagesService",ImagesService.class);
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
		Posts post = new Posts();
		post.setContent("HTC'nin merakla beklenen akıllı telefonu HTC U12'nin özellikleri, çıkış tarihi ve fiyatı sızdırıldı.");
		post.setTitle("HTC U12'nin özellikleri, çıkış tarihi ve fiyatı sızdırıld");
		
		post.setCategory(categoryService.getCategory(1));
		post.setCreated_date(new Date());
		postsService.addPosts(post);
		
		
		
	}
	
//	@Test
//	public void getLimitForPost() {
//		postsService.getLimitLastPosts(3, 0);
//	}
//	
//	@Test
//	public void uniqueResult() {
//		System.out.println(postsService.getLastPosts().getTitle());
//	}
	

	
	
}
