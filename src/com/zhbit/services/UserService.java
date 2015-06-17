package com.zhbit.services;

import java.util.List;

import com.zhbit.domain.User;


public interface UserService {
	
	public User insertUser(User user);

	public User updateUser(User user);
	
	public int uploadPic(int user_id,String photoPath);

	public void deleteUser(User user);

	public List searchUser(String userName);
	
	public List searchUser_only(String  username,String password);
	
	public User updatePassword(User user);



}
