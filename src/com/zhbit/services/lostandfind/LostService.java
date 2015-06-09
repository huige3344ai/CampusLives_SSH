
package com.zhbit.services.lostandfind;

import java.util.List;

import com.zhbit.domain.lostandfind.Find;
import com.zhbit.domain.lostandfind.Lost;

public interface LostService {
	
	public Lost insertLost(Lost lost);
	public List<Lost> getLost();
	public List<Lost> getoneLost(int id);
	public Lost updateLost(Lost lost);
	public Find insertFind(Find find);
	public List<Find> getFind();
	public List<Find> getoneFind(int id);
	public Find updateFind(Find find);

}

