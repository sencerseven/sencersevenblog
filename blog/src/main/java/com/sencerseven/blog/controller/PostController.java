package com.sencerseven.blog.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sencerseven.blog.controller.advice.NotFoundException;
import com.sencerseven.blogbackend.dto.Comment;
import com.sencerseven.blogbackend.dto.Posts;
import com.sencerseven.blogbackend.service.PostsService;

@Controller
@RequestMapping("/post")
public class PostController {
	
	@Autowired
	PostsService postService;

	@RequestMapping(value= {"{post}"})
	public ModelAndView postPage(@PathVariable("post")String tempPostName ) throws NotFoundException  {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "home");
		mv.addObject("userClickPostDetail",true);
		Posts post= postService.getByUrlName(tempPostName);	
			
			if(post == null) throw new NotFoundException();
				
						
				post.setView((int)(post.getView()+1));
				postService.updatePosts(post);
				
				List<Posts> categoryTrendPost = postService.getTrendPosts(3, 0, post.getCategory().getId());
				List<Posts> getRecentPost = postService.getRecentPost(post.getUser().getId(), 5, 0);
				List<Comment> comment = post.getComment();
				
				mv.addObject("post", post);
				mv.addObject("categoryTrendPost",categoryTrendPost);
				mv.addObject("getRecentPost",getRecentPost);
				mv.addObject("getLastPostsComment", comment);
			
		return mv;
		
	}
	
}
