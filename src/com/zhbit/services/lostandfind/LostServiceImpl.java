package com.zhbit.services.lostandfind;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.zhbit.dao.lostandfind.LAFDao;

import com.zhbit.domain.lostandfind.Lost;



@Transactional
public class LostServiceImpl  implements LostService{
	
	@Resource
	private LAFDao lafdao ;
	
	public Lost insertLost(Lost lost) {
	
		return lafdao.insertLost(lost);	
	}
	
	@SuppressWarnings("rawtypes")
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<Lost> getLost() {
		return lafdao.getLost();
	
	}
	
	
	@SuppressWarnings("rawtypes")
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<Lost> getoneLost(int id) {
		return lafdao.getoneLost(id);
	}
	
	
	public Lost updateLost(Lost lost){
		return lafdao.updateLost(lost);
	}
	
}