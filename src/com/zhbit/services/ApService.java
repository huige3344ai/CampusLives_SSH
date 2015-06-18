package com.zhbit.services;

import java.util.List;

import com.zhbit.domain.ActivityApply;


public interface ApService {

	void save(ActivityApply transientInstance);
	void delete(ActivityApply persistentInstance);
	void deleteByApNo(java.lang.Short apno);
	ActivityApply findById(java.lang.Short id);
	List findAll();
	List findAPById(java.lang.Short id);
	List findAPByAcId(java.lang.Short id);//通过活动id,在报名表中找活动
}
