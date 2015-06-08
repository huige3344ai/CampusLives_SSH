package com.zhbit.services.lostandfind;

import java.util.List;

import com.zhbit.domain.lostandfind.Lost;

public interface LostService {
	
	public Lost insertLost(Lost lost);
	public List<Lost> getLost();
	public List<Lost> getoneLost(int id);
	public Lost updateLost(Lost lost);

}
