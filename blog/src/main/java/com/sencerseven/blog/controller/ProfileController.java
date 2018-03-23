package com.sencerseven.blog.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.sencerseven.blog.util.FileUploadUtility;
import com.sencerseven.blogbackend.dto.User;
import com.sencerseven.blogbackend.service.UserService;

@Controller
@SessionAttributes("User")
@RequestMapping("/profile")
public class ProfileController {
	
	@Autowired
	UserService userService;

	@RequestMapping(value= {"","/"})
	public ModelAndView indexPage(@ModelAttribute("User")User sessionUser) {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("userClickProfileDetails", true);
		mv.addObject("userProfile", sessionUser);
		
		
		return mv;
		
	}
	
	@RequestMapping(value= {"/user"})
	public String userPost(@SessionAttribute("User")User sessionUser,@Valid @ModelAttribute("userProfile")User user ,Model model , BindingResult result , HttpServletRequest request) {
		
		if(result.hasErrors()) {
			model.addAttribute("userClickProfileDetails", true);
			model.addAttribute("User", new User());
		}
		
		
		if(!user.getMultipartFile().isEmpty()) {
			String fileName = FileUploadUtility.multiFileSingleUpload(request, user.getMultipartFile());			
			sessionUser.setImageURL(fileName);
		}
		
		
		
		userService.updateUser(sessionUser);		
		
		return "redirect:/profile";
	}
	
}
