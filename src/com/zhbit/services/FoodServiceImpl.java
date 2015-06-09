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

}
