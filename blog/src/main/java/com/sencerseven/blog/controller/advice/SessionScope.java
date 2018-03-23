package com.sencerseven.blog.controller.advice;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.UsesSunHttpServer;
import org.springframework.security.authentication.UserDetailsRepositoryReactiveAuthenticationManager;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sencerseven.blog.admin.AdminPostController;
import com.sencerseven.blogbackend.dto.User;
import com.sencerseven.blogbackend.service.UserService;

@SessionAttributes("User")
@ControllerAdvice(basePackages= {"com.sencerseven.blog.admin","com.sencerseven.blog.controller"})
public class SessionScope {

	
	@Autowired
 	private UserService userService;
	
	@ModelAttribute("User")
	public User session() {
			
//			if(paramUser != null) {
//				return paramUser;
//			}
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			
			if(authentication != null) {
				User user = userService.getByEmail(authentication.getName());
				if(user != null) {
					return user;
					
				}
				
				
			}
			return null;
	}
}
