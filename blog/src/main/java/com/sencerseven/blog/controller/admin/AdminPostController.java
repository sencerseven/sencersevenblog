package com.sencerseven.blog.controller.admin;

import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sencerseven.blogbackend.dto.Category;
import com.sencerseven.blogbackend.dto.Posts;
import com.sencerseven.blogbackend.service.CategoryService;
import com.sencerseven.blogbackend.service.PostsService;

@Controller
@RequestMapping(value= {"/admin/posts"})
public class AdminPostController {
	
	@Autowired
	PostsService postsService;

	@Autowired
	CategoryService categoryService;
	
	@RequestMapping
	public ModelAndView adminPostsPage() {
		ModelAndView mv = new ModelAndView("admin");
		
		mv.addObject("title", "Post Page");
		mv.addObject("adminClickPostsPage", true);
		
		List<Posts> posts = postsService.allPosts();  
		
		mv.addObject("posts",posts);
		
		
		return mv;
		
	}
	
	@GetMapping(value={"/add"})
	public ModelAndView adminPostAddPage() {
		ModelAndView mv = new ModelAndView("admin");
		
		mv.addObject("title", "Post Add Page");
		mv.addObject("adminClickPostAddPage", true);
		
		Posts post = new Posts();
		List<Category> category = categoryService.allCategory();
		mv.addObject("categories", category);
		mv.addObject("post", post);
		
		return mv;
	
	}
	
	@PostMapping(value = {"/add"})
	public String adminPostSubmission(@Valid @ModelAttribute("post")Posts post,BindingResult result,Model model) {
		
			if(result.hasErrors()) {
				model.addAttribute("title", "Post Add Page");
				model.addAttribute("adminClickPostAddPage", true);
				return "admin";
			}
			post.setCategory( categoryService.getCategory(post.getCategoryId()));
			post.setCreated_date(new Date());
			
			
			postsService.addPosts(post);
	
		return "redirect:/admin/posts?param=success";
	}
	
	
	
}
