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
	public void save(ActivityApply transientInstance) {//�����
		// TODO Auto-generated method stub
		activityApplyDao.save(transientInstance);
	}

	@Override
	public void delete(ActivityApply persistentInstance) {//ȡ������
		// TODO Auto-generated method stub
		activityApplyDao.delete(persistentInstance);
	}
	
	@Override
	public void deleteByApNo(Short apno) {//ͨ�� ����� ȡ��ĳ�������¼
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
	public List findAll() {//�鿴�����˵����еı���
		// TODO Auto-generated method stub
		return activityApplyDao.findAll();
	}

	@Override
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List findAPById(Short id) {//�鿴ĳ���˵����б���
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
