package com.zhbit.services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.zhbit.dao.RestaurantDAO;

import com.zhbit.domain.food.Restaurant;

@Transactional
public class RestaurantServiceImpl implements RestaurantService{
	@Resource
	private RestaurantDAO rd;
	
	@Override
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public Restaurant findid(int id) {
		return rd.findid(id);
	}

	@Override
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<Restaurant> findid() {
		
		return rd.findid();
	}
	
	

}
