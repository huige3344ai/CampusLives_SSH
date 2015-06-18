package com.zhbit.services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.zhbit.dao.ActivityApplyDAO;
import com.zhbit.domain.ActivityApply;

@Transactional(propagation=Propagation.REQUIRED)
public class ApServiceImpl implements ApService {

	@Resource
	ActivityApplyDAO activityApplyDao;
	
	@Override
	public void save(ActivityApply transientInstance) {//报名活动
		// TODO Auto-generated method stub
		activityApplyDao.save(transientInstance);
	}

	@Override
	public void delete(ActivityApply persistentInstance) {//取消报名
		// TODO Auto-generated method stub
		activityApplyDao.delete(persistentInstance);
	}
	
	@Override
	public void deleteByApNo(Short apno) {//通过 申请号 取消某条申请记录
		// TODO Auto-generated method stub
		activityApplyDao.deleteByApNo(apno);
	}


	@Override
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public ActivityApply findById(Short id) {
		// TODO Auto-generated method stub
		return activityApplyDao.findById(id);
	}

	@Override
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List findAll() {//查看所有人的所有的报名
		// TODO Auto-generated method stub
		return activityApplyDao.findAll();
	}

	@Override
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List findAPById(Short id) {//查看某个人的所有报名
		// TODO Auto-generated method stub
		return activityApplyDao.findAPById(id);
		
	}

	@Override
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List findAPByAcId(Short id) {
		// TODO Auto-generated method stub
		return activityApplyDao.findAPByAcId(id);
	}

	
}
