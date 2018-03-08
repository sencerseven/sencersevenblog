package com.sencerseven.blog.controller;

import java.lang.reflect.Method;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sencerseven.blog.controller.advice.NotFoundException;
import com.sencerseven.blog.functions.BlogFunctions;
import com.sencerseven.blogbackend.dto.Comment;
import com.sencerseven.blogbackend.dto.Posts;
import com.sencerseven.blogbackend.service.CommentService;
import com.sencerseven.blogbackend.service.PostsService;

@Controller
public class PageController {

	@Autowired
	PostsService postService;
	
	
	@RequestMapping(value = {"/","/index","/home"})
	public ModelAndView indexPage() {
		ModelAndView mv = new ModelAndView("page");
		
		mv.addObject("title", "home");
		mv.addObject("userClickHomePage",true);
		Posts posts = null;
		posts = postService.getLastPosts();
		if(posts != null) {			
			List<Comment> comment = posts.getComment();
			mv.addObject("getLastPosts", posts);
			mv.addObject("getLastPostsComment", comment);
		}else {
			
		}
		

		return mv;
	}
	
	@RequestMapping(value= {"/category/{category}/post/{post}"})
	public ModelAndView postPage(@PathVariable("category")String tempCategoryName,@PathVariable("post")String tempPostName ) throws NotFoundException  {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "home");
		mv.addObject("userClickHomePage",true);
		Posts post= postService.getByUrlName(tempPostName);	
			if(post == null) throw new NotFoundException();				
				List<Comment> comment = post.getComment();
				mv.addObject("getLastPosts", post);
				mv.addObject("getLastPostsComment", comment);
			
		return mv;
		
	}
	
	
	@RequestMapping(value = {"/contact"})
	public ModelAndView contactPage() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "contact");
		mv.addObject("userClickContactPage",true);

		return mv;
	}
}
