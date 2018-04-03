package com.sencerseven.blog.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.sencerseven.blogbackend.dto.Category;
import com.sencerseven.blogbackend.dto.Images;
import com.sencerseven.blogbackend.service.CategoryService;
import com.sencerseven.blogbackend.service.ImagesService;

@RestController
@RequestMapping("/api")
public class BlogResource {

	@Autowired
	CategoryService categoryService;
	
	
	
	@GetMapping(value ="/category/{id}",produces=MediaType.APPLICATION_JSON_VALUE)
	public Category getCategory(@PathVariable("id")int id){
		return categoryService.getCategory(id);	
	}
	
}
