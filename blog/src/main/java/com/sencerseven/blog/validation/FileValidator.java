package com.sencerseven.blog.validation;

import java.util.List;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.springframework.web.multipart.MultipartFile;

import com.sencerseven.blogbackend.dto.Posts;


public class FileValidator implements Validator{

		@Override
		public boolean supports(Class<?> clazz) {
				return Posts.class.isAssignableFrom(clazz);
		}

		@Override
		public void validate(Object obj, Errors errors) {
			Posts post = (Posts) obj;
			System.out.println("burda!!!!");
			
				for(int i =0; i<post.getFiles().size(); i++) {
					if(post.getFiles().get(i).getOriginalFilename() == null)
						errors.rejectValue("files["+ i +"]",null,"missing file");
					
//					if(!(post.getFiles().get(i).getContentType().equals("images/png") ||
//						post.getFiles().get(i).getContentType().equals("image/jpg"))){
//						errors.reject("files["+ i +"]",null, "Please only image file for update");
//					}
						
				}
				return;
				
				

			
		}

	}

