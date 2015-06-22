
package com.zhbit.services.lostandfind;

import java.util.List;

import com.zhbit.domain.lostandfind.Find;
import com.zhbit.domain.lostandfind.Findreply;
import com.zhbit.domain.lostandfind.Lost;
import com.zhbit.domain.lostandfind.Lostreply;

public interface LostService {
	
	public Lost insertLost(Lost lost);
	public List<Lost> getLost();
	public List<Lost> getoneLost(int id);
	public Lost updateLost(Lost lost);
	public Find insertFind(Find find);
	public List<Find> getFind();
	public List<Find> getoneFind(int id);
	public Find updateFind(Find find);
	public Findreply insertFindreply(Findreply findreply);
	public List<Findreply> getFindreply(int id);
	public Lostreply insertLostreply(Lostreply lostreply);
	public List<Lostreply> getLostreply(int id);
	public List<Find> getpersonalFind(String username);
	public List<Lost> getpersonalLost(String username);
	public void deleteFind(int id);
	public void deleteLost(int id);
	public void deleteLostreply(int id);
	public void deleteFindreply(int id);
}

