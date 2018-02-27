package com.sencerseven.blogbackend.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

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
	public boolean addPosts(Posts posts) {
		try {
			sessionFactory.getCurrentSession().persist(posts);
			return true;
		}catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}

	@Override
	public boolean updatePosts(Posts posts) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deletePosts(Posts posts) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Posts> allPosts() {
		// TODO Auto-generated method stub
		return null;
	}

}
