package com.zhbit.services;

import java.util.List;

import javax.annotation.Resource;

import com.zhbit.dao.FoodDAO;
import com.zhbit.domain.Role;
import com.zhbit.domain.food.Comments;
import com.zhbit.domain.food.Restaurant;

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
		
		return fd.findByPage(pageNo, pageSize, r_id);
	}

	@Override
	public List<Comments> findComment(int r_id, int user_id) {
		
		return fd.findComment(r_id, user_id);
	}

	@Override
	public Role searchUser(int urid) {
		
		return fd.searchUser(urid);
	}

	@Override
	public double selectAVG(int num) {
		
		return fd.selectAVG(num);
	}

}
