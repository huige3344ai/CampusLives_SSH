package com.zhbit.services;

import java.util.List;

import com.zhbit.domain.LoveActivity;;

public interface AcService {
	void save(LoveActivity transientInstance);
	void delete(LoveActivity persistentInstance);
	void deleteAcByID(Short id);
	LoveActivity findById(java.lang.Short id);
	List findAll();
	void updateActivity2(LoveActivity la);
	void updateActivity(java.lang.Short id,LoveActivity la);
}
