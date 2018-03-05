package com.sencerseven.blogbackend.test;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.sencerseven.blogbackend.dao.CategoryDAO;
import com.sencerseven.blogbackend.dto.Comment;
import com.sencerseven.blogbackend.service.CommentService;
import com.sencerseven.blogbackend.service.PostsService;

public class CommentTestCase {

	public static CommentService commentService;
	public static PostsService postsService;
	public static CategoryDAO categoryDAO;
	public static AnnotationConfigApplicationContext context;
	
	@BeforeClass
	public static void init() {
		 context =new AnnotationConfigApplicationContext();
		context.scan("com.sencerseven.blogbackend");
		context.refresh();
		
		categoryDAO = context.getBean("categoryDAO", CategoryDAO.class);

		postsService = context.getBean("postsService",PostsService.class);
		commentService = context.getBean("commentService", CommentService.class);
		
		
	
	}
	
	@Test
	public void addComment() {
		
		
		Comment comment = new Comment();
		comment.setComment("Abi efsanesin yaa.");
		comment.setPosts(postsService.getPosts(3));
		
		commentService.addComment(comment);

	}
}
