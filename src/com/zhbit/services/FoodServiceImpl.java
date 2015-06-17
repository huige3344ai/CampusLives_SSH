package com.zhbit.services;

import java.util.List;

import javax.annotation.Resource;

import com.zhbit.dao.FoodDAO;
import com.zhbit.domain.food.Comments;

public class FoodServiceImpl implements FoodService{
	@Resource
	private FoodDAO fd;
	
	@Override
	public List<Comments> findR_id(int r_id) {
		
		return fd.findR_id(r_id);
	}
	
	public Comments saveComment(Comments comment){
		
		return fd.saveComment(comment);
		
	}

	@Override
	public int gettotalPages(int r_id, int pageSize) {
		
		return fd.gettotalPages(r_id, pageSize);
	}

	@Override
	public List<Comments> findByPage(int pageNo, int pageSize, int r_id) {
		// TODO Auto-generated method stub
		return fd.findByPage(pageNo, pageSize, r_id);
	}

	@Override
	public List<Comments> findComment(int r_id, int user_id) {
		
		return fd.findComment(r_id, user_id);
	}

}
