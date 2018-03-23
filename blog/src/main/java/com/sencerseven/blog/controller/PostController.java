package com.sencerseven.blog.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.servlet.ModelAndView;

import com.sencerseven.blog.controller.advice.NotFoundException;
import com.sencerseven.blogbackend.dto.Comment;
import com.sencerseven.blogbackend.dto.Posts;
import com.sencerseven.blogbackend.dto.User;
import com.sencerseven.blogbackend.service.CommentService;
import com.sencerseven.blogbackend.service.PostsService;

@SessionAttributes("User")
@Controller
@RequestMapping("/post")
public class PostController {
	
	@Autowired
	PostsService postService;
	
	@Autowired
	CommentService commentService;

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
				List<Posts> getBackPost = postService.getBackPost(post, 0, 1);
				List<Posts> getNextPost = postService.getNextPost(post, 0, 1);
				
				List<Comment> comment = post.getComment();
				
				mv.addObject("post", post);
				mv.addObject("categoryTrendPost",categoryTrendPost);
				mv.addObject("getRecentPost",getRecentPost);
				mv.addObject("getBackPost",getBackPost);
				mv.addObject("getNextPost",getNextPost);
				mv.addObject("getLastPostsComment", comment);
			
		return mv;
		
	}
	
	@PostMapping("addcomment")
	@ResponseBody
	public String saveComment(@SessionAttribute("User")User tempUser,@RequestParam("post_id")int id,@RequestParam("comment")String tempComment) {
		
		Posts post = postService.getPosts(id);
		if(post != null) {
			Comment comment = new Comment();
			comment.setPosts(post);
			comment.setComment(tempComment);
			comment.setUser(tempUser);
			if(commentService.addComment(comment))
				return "true"; 
		}
			return "false";
	}
	
}
