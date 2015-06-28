package com.zhbit.services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.zhbit.dao.UserDao;
import com.zhbit.domain.User;

@Transactional
public class UserServiceImpl implements UserService {
	@Resource
	private UserDao userdao ;
	
	public User insertUser(User user) {
		// TODO Auto-generated method stub
		return userdao.insertUser(user);
		
	}

	public User updateUser(User user) {
		// TODO Auto-generated method stub
		return userdao.updateUser(user);
	}

	public void deleteUser(User user) {
		// TODO Auto-generated method stub

	}

	public List searchUser(String userName) {
		// TODO Auto-generated method stub
		return userdao.searchUser(userName);
	}

	@SuppressWarnings("rawtypes")
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List searchUser_only(String username, String password) {
		// TODO Auto-generated method stub
		return userdao.searchUser_only(username, password);
	}

	public User updatePassword(User user) {
		// TODO Auto-generated method stub
		return userdao.updatePassword(user);
	}

	@Override
	public int uploadPic(int user_id, String photoPath) {
		// TODO Auto-generated method stub
		return userdao.uploadPic(user_id, photoPath);
	}

	@Override
	public User searchUser(int userid) {
		// TODO Auto-generated method stub
		return userdao.searchUser(userid);
	}
	
	@Override
	public User updateUserType(User user) {
		// TODO Auto-generated method stub
		return userdao.updateUserType(user);
	}	
	

}
