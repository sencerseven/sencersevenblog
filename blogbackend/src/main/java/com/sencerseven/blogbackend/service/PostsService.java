package com.sencerseven.blogbackend.service;

import java.lang.reflect.Method;
import java.util.List;

import com.sencerseven.blogbackend.dto.Category;
import com.sencerseven.blogbackend.dto.Posts;

public interface PostsService {

	
	public Posts getPosts(int id);
	public void addPosts(Posts posts);
	public boolean updatePosts(Posts posts);
	public boolean deletePosts(Posts posts);
	public List<Posts> allPosts();
	public boolean saveOrUpdate(Posts posts);

	//Business
	
	public Posts getLastPosts();
	public List<Posts> getLimitLastPosts(int limit,int startAt);
	public Posts getByUrlName(String tempUrl );
	List<Posts> getTrendPosts(int limit, int startAt, Integer categoryId);
	List<Posts> getRecentPost(int userId, int startAt, int limit);
	List<Posts> getLimitLastPostsByCategory(Category category, int limit, int startAt);
	Long countPost(Category category);
	List<Posts> getNextPost(Posts post, int startAt, int limit);
	List<Posts> getBackPost(Posts post, int startAt, int limit);
	List<Posts> getSliderPost(int startAt, int limit);
	public List<Posts> featuredPost(int startAt, int limit);
	List<Posts> searchPostLike(String text);
	
	
}
