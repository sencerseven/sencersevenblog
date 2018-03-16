package com.sencerseven.blogbackend.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sencerseven.blogbackend.dao.PostsDAO;
import com.sencerseven.blogbackend.dto.Posts;

@Repository("postsDAO")
public class PostsDAOImpl implements PostsDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public Posts getPosts(int id) {
		try {
		return sessionFactory.getCurrentSession().get(Posts.class, id);
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		return null;
	}

	@Override
	public void addPosts(Posts posts) {
		Session session = sessionFactory.getCurrentSession();
		try {
			session.persist(posts);
		}catch (Exception e) {
			session.merge(posts)	;
		}
	}

	@Override
	public boolean updatePosts(Posts posts) {
		try {
			sessionFactory.getCurrentSession().update(posts);
			return true;
		}catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}

	@Override
	public boolean deletePosts(Posts posts) {
		try {
			sessionFactory.getCurrentSession().delete(posts);
			return true; 
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}

	@Override
	public List<Posts> allPosts() {
		try {			
			return sessionFactory.getCurrentSession().createQuery("From Posts",Posts.class).getResultList();
		} catch (Exception e) {
			
		}
		return null;
		
	}

	@Override
	public boolean saveOrUpdate(Posts posts) {
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(posts);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}

}
