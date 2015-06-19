
package com.zhbit.services;

import java.util.List;

import com.zhbit.domain.food.Restaurant;

public interface RestaurantService {
	
	public Restaurant findid(int id);
	 
	 public List<Restaurant> findid();
	 
	 public List<Restaurant> finduid(int user_id);

	 public void Delete(int r_id);
}
