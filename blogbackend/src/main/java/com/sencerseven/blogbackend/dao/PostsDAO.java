package com.sencerseven.blogbackend.dao;

import java.util.List;

import com.sencerseven.blogbackend.dto.Posts;

public interface PostsDAO {
	
	public Posts getPosts(int id);
	public boolean addPosts(Posts posts);
	public boolean updatePosts(Posts posts);
	public boolean deletePosts(Posts posts);
	public List<Posts> allPosts();

}
