package com.zhbit.services;

import java.util.List;

import com.zhbit.domain.LoveActivity;;

public interface AcService {
	void save(LoveActivity transientInstance);
	void delete(LoveActivity persistentInstance);
	LoveActivity findById(java.lang.Short id);
	List findAll();

}
