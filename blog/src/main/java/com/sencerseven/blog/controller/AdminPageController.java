package com.sencerseven.blog.controller;

import java.io.IOException;
import java.lang.invoke.MethodType;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.validation.Valid;
import javax.ws.rs.GET;
import javax.ws.rs.POST;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sencerseven.blogbackend.dto.Category;
import com.sencerseven.blogbackend.service.CategoryService;

@Controller
@RequestMapping(value= {"/admin"})
public class AdminPageController{

	@Autowired
	CategoryService categoryService;	
	
	@RequestMapping
	public ModelAndView indexPage() {
		ModelAndView mv = new ModelAndView("admin");
		
		mv.addObject("title", "Admin DashBoard");
		mv.addObject("adminClickHomePage", true);
		
		
		return mv;
	}
	
	@RequestMapping(	"/category")
	public ModelAndView categoryPage(@RequestParam(name="param",required=false)String param ) {
		ModelAndView mv = new ModelAndView("admin");
		
		mv.addObject("title", "Category Page");
		mv.addObject("adminClickCategoryPage", true);
		
		List<Category> categories = categoryService.allCategory();
		
		mv.addObject("categories", categories);
		return mv;
	}
	
	@PostMapping("/category/{id}/activation")
	@ResponseBody
	public String categoryActivation(@PathVariable("id")int id) {
		String proccess = "Your category is ";
		Category category = categoryService.getCategory(id);
		category.setActive(!category.isActive());
		categoryService.updateCategory(category);
		
		
		return (!category.isActive()) ? "Category has been deactivated which have got id" +  category.getId() :
										"Category has been activated which have got id" +  category.getId();
		
	}
	
	@PostMapping("/category/{id}/delete")
	@ResponseBody
	public String categoryDeleting(@PathVariable("id")int id) {
		
		
		categoryService.deleteCategory(categoryService.getCategory(id));
		
		
		return "true";
	}
	
	@RequestMapping(value = "/category/add",method=RequestMethod.GET)
	public ModelAndView categorAddPage() {
		ModelAndView mv = new ModelAndView("admin");
		
		mv.addObject("title", "Category Add");
		mv.addObject("adminClickCategoryAddPage", true);
		Category category = new Category();
		mv.addObject("category", category);
		
		
		return mv;
		
	}
	
	@RequestMapping(value = "/category/edit/{id}",method=RequestMethod.GET)
	public ModelAndView categorEditPage(@PathVariable("id")int id) {
		ModelAndView mv = new ModelAndView("admin");
		
		mv.addObject("title", "Category Add");
		mv.addObject("adminClickCategoryAddPage", true);
		Category category = categoryService.getCategory(id);
		mv.addObject("category", category);
		
		
		return mv;
		
	}
	
	
	@RequestMapping(value = "/category/add",method=RequestMethod.POST)
	public String categoryAddSubmission(@Valid @ModelAttribute("category")Category category,BindingResult result,Model model) {
		
		if(result.hasErrors()) {
			
			model.addAttribute("title", "Category Add");
			model.addAttribute("adminClickCategoryAddPage", true);			
			return "admin";
		}else {
			
			categoryService.saveOrUpdate(category);
			return "redirect:/admin/category?param=success";
			
		}
		
		
		
	}
	
	
}
