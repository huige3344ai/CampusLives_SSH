package com.zhbit.services;

import java.util.List;

import com.zhbit.domain.ActivityApply;


public interface ApService {

	void save(ActivityApply transientInstance);
	void delete(ActivityApply persistentInstance);
	ActivityApply findById(java.lang.Short id);
	List findAll();
}
