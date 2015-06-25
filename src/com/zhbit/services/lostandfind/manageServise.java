package com.zhbit.services.lostandfind;

import java.util.List;

import com.zhbit.domain.lostandfind.Find;
import com.zhbit.domain.lostandfind.Findreply;
import com.zhbit.domain.lostandfind.Lost;
import com.zhbit.domain.lostandfind.Lostreply;

public interface manageServise {
	
			public List<Lost> getLost() ;
			public List<Lost> getoneLost(int id);
			public void deleteLost(int id);
			public List<Find> getFind();
			public List<Find> getoneFind(int id);
			public void deleteFind(int id);
			public List<Findreply> getFindreply(int id);
			public List<Lostreply> getLostreply(int id);
			public void deleteLostreply(int id);
			public void deleteFindreply(int id);
			public void deleteLostonereply(int id);
			public void deleteFindonereply(int id);
}
