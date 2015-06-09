package com.zhbit.services;

import java.util.List;

import com.zhbit.domain.food.Comments;

public interface FoodService {
	public List<Comments> findR_id(int r_id);
}
