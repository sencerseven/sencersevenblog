package com.sencerseven.blogbackend.service;

import java.util.List;

import com.sencerseven.blogbackend.dto.User;

public interface UserService {
	
public User getUser(int id);
	
	public boolean updateUser(User user);
	
	public boolean deleteUser(User user);
	
	public boolean addUser(User user);
	
	public List<User> getAllUser();

	
	//Bussiness methods
	
	public User getByEmail(String email);

	Long userCount();
}
