package com.sencerseven.blog.admin;

import java.io.IOException;
import java.lang.invoke.MethodType;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import javax.ws.rs.GET;
import javax.ws.rs.POST;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.sencerseven.blogbackend.dto.Category;
import com.sencerseven.blogbackend.service.CategoryService;
import com.sencerseven.blogbackend.service.UserService;

@Controller
@RequestMapping(value= {"/admin"})
public class AdminPageController{

@Autowired
UserService userService;	
	
	
	@RequestMapping
	public ModelAndView indexPage() {
		ModelAndView mv = new ModelAndView("admin");
		
		Long userCount = userService.userCount();
		

		mv.addObject("userCount", userCount);
		
		mv.addObject("title", "Admin DashBoard");
		mv.addObject("adminClickHomePage", true);
		
		
		return mv;
	}
	
	@RequestMapping(value="/login")
	public ModelAndView loginPage(@RequestParam(name="error",required = false)String error,
			@RequestParam(name="logout",required = false)String logout) {
		ModelAndView mv = new ModelAndView("admin_page/login");
		mv.addObject("title", "Admin Login Page");
		mv.addObject("adminClickLoginPage", true);
		return mv;
	}
	
	@RequestMapping(value={"/perform-logout"})
	public String logout(HttpServletRequest httpServletRequest,HttpServletResponse httpServletResponse) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		
		if(authentication != null)
			new SecurityContextLogoutHandler().logout(httpServletRequest, httpServletResponse, authentication);
		
		return "redirect:/admin/login?logout";
	}
	
	@RequestMapping("/access-denied")
	public String accessDenied() {
		return "redirect:/admin/login";
	}
	
	
}
