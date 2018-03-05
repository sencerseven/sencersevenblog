package com.sencerseven.blogbackend.serviceimpl;

import java.util.List;

import javax.transaction.Transactional;

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
		// TODO Auto-generated method stub
		return postsDAO.getPosts(id);
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
		// TODO Auto-generated method stub
		return false;
	}
	
	@Override
	@Transactional
	public Posts getLastPosts() {
		try {
			String queryString = "FROM Posts p ORDER BY p.id DESC";
			Query<Posts> query = sessionFactory.getCurrentSession().createQuery(queryString, Posts.class);
			query.setMaxResults(1);
			
			return query.getSingleResult();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	@Override
	@Transactional
	public List<Posts> getLimitLastPosts(int limit, int startAt) {
		String queryString = "FROM Posts p ORDER BY p.id DESC";
		Query<Posts> query = sessionFactory.getCurrentSession().createQuery(queryString, Posts.class);
		query.setMaxResults(limit);
		query.setFirstResult(startAt);
	
		return query.getResultList();
	}

	@Override
	@Transactional
	public Posts getByUrlName(String tempUrl) {
		String queryString = ("FROM Posts p WHERE p.postUrl = :postUrl");
		Query<Posts> query = sessionFactory.getCurrentSession().createQuery(queryString,Posts.class);
		query.setParameter("postUrl", tempUrl);
		return query.getSingleResult();
	}
	
	

}
