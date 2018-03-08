package com.sencerseven.blog.controller.admin;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.sencerseven.blog.util.FileUploadUtility;
import com.sencerseven.blog.validation.FileValidator;
import com.sencerseven.blogbackend.dto.Category;
import com.sencerseven.blogbackend.dto.Images;
import com.sencerseven.blogbackend.dto.Posts;
import com.sencerseven.blogbackend.service.CategoryService;
import com.sencerseven.blogbackend.service.ImagesService;
import com.sencerseven.blogbackend.service.PostsService;

@Controller
@RequestMapping(value= {"/admin/posts"})
public class AdminPostController {
	
	@Autowired
	PostsService postsService;

	@Autowired
	CategoryService categoryService;
	
	@Autowired
	ImagesService imagesService;
	
	
	
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
		
		
		MultipartFile multipartFile = null;
		List<MultipartFile> multipartFiles = new ArrayList<MultipartFile>();
		multipartFiles.add(multipartFile);
		
		post.setFiles(multipartFiles);
		
		mv.addObject("multipartFiles", multipartFiles);
		mv.addObject("categories", category);
		mv.addObject("post", post);
		
		return mv;
	
	}
	
	@PostMapping(value = {"/add"})
	public String adminPostSubmission(@Valid @ModelAttribute("post")Posts post,BindingResult result,Model model,HttpServletRequest request) {
		
			new FileValidator().validate(post, result);
			
			if(result.hasErrors()) {
				MultipartFile multipartFile = null;
				List<MultipartFile> multipartFiles = new ArrayList<MultipartFile>();
				multipartFiles.add(multipartFile);
				List<Category> category = categoryService.allCategory();

				model.addAttribute("categories", category);
				model.addAttribute("multipartFiles", multipartFiles);
				model.addAttribute("title", "Post Add Page");
				model.addAttribute("adminClickPostAddPage", true);
				return "admin";
			}
			
			
			
			System.out.println(result.toString());
			
			
			

			post.setCategory( categoryService.getCategory(post.getCategoryId()));
			
			if(post.getId() == 0)
				post.setCreated_date(new Date());
			else
				post.setCreated_date(postsService.getPosts(post.getId()).getCreated_date());
			
			postsService.saveOrUpdate(post);
	
			List<String> tempString = FileUploadUtility.multiFileUpload(request, post.getFiles());
			for (String string : tempString) {
			Images tempImages = new Images();
			tempImages.setImageName(string);
			tempImages.setPosts(post);
			imagesService.addImages(tempImages);
		}
		
			
		return "redirect:/admin/posts?param=success";
	}
	
	@RequestMapping(value = "/{id}/delete")
	@ResponseBody
	public String adminPostDelete(@PathVariable("id")int id) {
		Posts posts = postsService.getPosts(id);
			postsService.deletePosts(posts);
			return "true";
		
	}
	
	@GetMapping(value = "/{id}/edit")
	public ModelAndView adminPostEdit(@PathVariable("id")int id) {
		ModelAndView mv = new ModelAndView("admin");
		Posts post = postsService.getPosts(id);
		post.setCategoryId(post.getCategory().getId());
		mv.addObject("title", "Post Add Page");
		mv.addObject("adminClickPostAddPage", true);
		mv.addObject("post", post);
		List<Category> category = categoryService.allCategory();
		mv.addObject("categories", category);
		return mv;
	}
	
	
	
}
