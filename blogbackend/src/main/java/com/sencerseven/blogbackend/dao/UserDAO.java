package com.sencerseven.blogbackend.dao;

import java.util.List;

import com.sencerseven.blogbackend.dto.User;

public interface UserDAO {

	public User getUser(int id);
	
	public boolean updateUser(User user);
	
	public boolean deleteUser(User user);
	
	public boolean addUser(User user);
	
	public List<User> getAllUser();
}
