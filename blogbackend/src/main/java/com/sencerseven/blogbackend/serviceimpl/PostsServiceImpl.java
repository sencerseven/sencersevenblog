package com.sencerseven.blogbackend.serviceimpl;

import java.lang.reflect.Method;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sencerseven.blogbackend.dao.PostsDAO;
import com.sencerseven.blogbackend.dto.Posts;
import com.sencerseven.blogbackend.funtions.BlogBackendFunctions;
import com.sencerseven.blogbackend.service.PostsService;

@Service("postsService")
public class PostsServiceImpl implements PostsService{

	@Autowired
	PostsDAO postsDAO;
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public Posts getPosts(int id) {
		Posts post = postsDAO.getPosts(id);
		Hibernate.initialize(post.getComment());
		return post;
	}

	@Override
	@Transactional(rollbackOn = Exception.class)
	public void addPosts(Posts posts) {
		postsDAO.addPosts(posts);
		posts.setPostUrl(BlogBackendFunctions.toPrettyURL(posts.getTitle(),posts.getId()));
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

	@Override
	@Transactional
	public boolean saveOrUpdate(Posts posts) {
		postsDAO.saveOrUpdate(posts);
		posts.setPostUrl(BlogBackendFunctions.toPrettyURL(posts.getTitle(),posts.getId()));	
		return true;
				
	}
	
	@Override
	@Transactional
	public Posts getLastPosts() {
		try {
			
			String queryString = "FROM Posts p ORDER BY p.id DESC";
			Query<Posts> query = sessionFactory.getCurrentSession().createQuery(queryString, Posts.class);
			query.setMaxResults(1);
			Posts post = query.getSingleResult();
			Hibernate.initialize(post.getComment());
			Hibernate.initialize(post.getImages());
			return post;
			
		} catch (Exception e) {
		
		}
		return null;
	}

	@Override
	@Transactional
	public List<Posts> getLimitLastPosts(int limit, int startAt) {
		try {
			String queryString = "FROM Posts p ORDER BY p.id DESC";
			Query<Posts> query = sessionFactory.getCurrentSession().createQuery(queryString, Posts.class);
			query.setMaxResults(limit);
			query.setFirstResult(startAt);
			List<Posts> posts = query.getResultList();
			for(Posts tempPost : posts) {
				Hibernate.initialize(tempPost.getImages());
			}
			
			return query.getResultList();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return null;
	}

	@Override
	@Transactional
	public Posts getByUrlName(String tempUrl) {
		
		
		try {	
			
			String queryString = ("FROM Posts p WHERE p.postUrl = :postUrl");
			Query<Posts> query = sessionFactory.getCurrentSession().createQuery(queryString,Posts.class);
			query.setParameter("postUrl", tempUrl);
			Posts post = query.getSingleResult();
			Hibernate.initialize(post.getComment());
			Hibernate.initialize(post.getImages());
			return post;
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	
	

}
