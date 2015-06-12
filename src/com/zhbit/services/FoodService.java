package com.zhbit.services;

import java.util.List;

import com.zhbit.domain.food.Comments;

public interface FoodService {
	public List<Comments> findR_id(int r_id);
	
	public Comments saveComment(Comments comment);
	
	public int gettotalPages(int r_id, int pageSize);
	
	public List<Comments>  findByPage(int pageNo, int pageSize, int r_id);
	
	public List<Comments> findComment(int r_id,int user_id);
}
