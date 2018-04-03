package com.sencerseven.blog.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sencerseven.blogbackend.dto.Posts;
import com.sencerseven.blogbackend.service.PostsService;

@Controller
@RequestMapping("/search")
public class SearchController {
	
	@Autowired
	PostsService postsService;

	@GetMapping
	public ModelAndView index(@RequestParam("text")String  text) {
		
		ModelAndView mv = new ModelAndView("page");
		
		mv.addObject("title", "Search");
		mv.addObject("userClickSearch", true);
		
		List<Posts> posts = null;
		if(text != null)
		posts = postsService.searchPostLike(text); 
		
		mv.addObject("postsList", posts);
		
		return mv;
		
	}
	
}
