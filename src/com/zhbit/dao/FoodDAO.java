package com.zhbit.dao;

import java.util.List;

import com.zhbit.domain.food.Comments;



public interface FoodDAO {
	
		public List<Comments> findR_id(int r_id);
		
}
