package com.zhbit.dao;

import java.util.List;

import com.zhbit.domain.food.Restaurant;

public interface RestaurantDAO  {
	
	 public Restaurant findid(int id);
	 
	 public List<Restaurant> findid();
	 
	
	
}