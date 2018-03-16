package com.sencerseven.blogbackend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sencerseven.blogbackend.dao.UserDAO;
import com.sencerseven.blogbackend.dto.User;

@Repository("userDAO")
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public User getUser(int id) {
		User user = null;
		try {
		user = 	sessionFactory.getCurrentSession().get(User.class,id);
				
		} catch (Exception e) {
			// TODO: handle exception
		}
		return user;
	}

	@Override
	public boolean updateUser(User user) {
		try {
			sessionFactory.getCurrentSession().update(user);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}

	@Override
	public boolean deleteUser(User user) {
		try {
			sessionFactory.getCurrentSession().delete(user);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}

	@Override
	public boolean addUser(User user) {
		try {
			sessionFactory.getCurrentSession().persist(user);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}

	@Override
	public List<User> getAllUser() {
		try {
			
			String queryString = "FROM User";
			Query<User> query = sessionFactory.getCurrentSession().createQuery(queryString,User.class);
			return query.getResultList();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

}
