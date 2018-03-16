package com.sencerseven.blogbackend.serviceimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sencerseven.blogbackend.dao.UserDAO;
import com.sencerseven.blogbackend.dto.User;
import com.sencerseven.blogbackend.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{

	@Autowired
	UserDAO userDAO;
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public User getUser(int id) {
		return userDAO.getUser(id);
	}

	@Override
	@Transactional
	public boolean updateUser(User user) {
		return userDAO.updateUser(user);
	}

	@Override
	@Transactional
	public boolean deleteUser(User user) {
		return userDAO.deleteUser(user);
	}

	@Override
	@Transactional
	public boolean addUser(User user) {
		return userDAO.addUser(user);
	}

	@Override
	@Transactional
	public List<User> getAllUser() {
		return userDAO.getAllUser();
	}

	@Override
	@Transactional
	public User getByEmail(String email) {
		try {
				
			String queryString = "FROM User WHERE email = :email";
			Query<User> query = sessionFactory.getCurrentSession().createQuery(queryString,User.class);
			query.setParameter("email",email);
			return query.getSingleResult();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
 		return null;
	}

}
