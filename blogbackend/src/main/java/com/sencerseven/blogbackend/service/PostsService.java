package com.sencerseven.blogbackend.service;

import java.util.List;

import com.sencerseven.blogbackend.dto.Posts;

public interface PostsService {

	
	public Posts getPosts(int id);
	public boolean addPosts(Posts posts);
	public boolean updatePosts(Posts posts);
	public boolean deletePosts(Posts posts);
	public List<Posts> allPosts();

	//Business
	
	public Posts getLastPosts();
	
	
	
}
