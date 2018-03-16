package com.sencerseven.blog.model;

import java.util.List;

import com.sencerseven.blogbackend.dto.Category;
import com.sencerseven.blogbackend.dto.Posts;

public class CategoryModel {
	
	private Category category;
	
	private List<Posts> populerPosts;

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public List<Posts> getPopulerPosts() {
		return populerPosts;
	}

	public void setPopulerPosts(List<Posts> populerPosts) {
		this.populerPosts = populerPosts;
	}
	
	
	

}
