package com.sencerseven.blog.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
		
		Posts posts = postService.getLastPosts();
		List<Comment> comment = posts.getComment();
		mv.addObject("getLastPosts", posts);
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
