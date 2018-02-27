package com.sencerseven.blogbackend.serviceimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sencerseven.blogbackend.dao.PostsDAO;
import com.sencerseven.blogbackend.dto.Posts;
import com.sencerseven.blogbackend.service.PostsService;

@Service("postsService")
public class PostsServiceImpl implements PostsService{

	@Autowired
	PostsDAO postsDAO;
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public Posts getLastPosts() {
		String queryString = "FROM Posts p ORDER BY p.id DESC";
		Query<Posts> query = sessionFactory.getCurrentSession().createQuery(queryString, Posts.class);
		query.setMaxResults(1);
	
		return query.getSingleResult();
	}

	@Override
	@Transactional
	public Posts getPosts(int id) {
		// TODO Auto-generated method stub
		return postsDAO.getPosts(id);
	}

	@Override
	@Transactional
	public boolean addPosts(Posts posts) {
		// TODO Auto-generated method stub
		return postsDAO.addPosts(posts);
	}

	@Override
	@Transactional
	public boolean updatePosts(Posts posts) {
		// TODO Auto-generated method stub
		return postsDAO.updatePosts(posts);
	}

	@Override
	@Transactional
	public boolean deletePosts(Posts posts) {
		// TODO Auto-generated method stub
		return postsDAO.deletePosts(posts);
	}

	@Override
	@Transactional
	public List<Posts> allPosts() {
		// TODO Auto-generated method stub
		return postsDAO.allPosts();
	}

}
