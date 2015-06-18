package com.zhbit.services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.zhbit.dao.LoveActivityDAO;
import com.zhbit.domain.LoveActivity;



@Transactional(propagation=Propagation.REQUIRED)
public class AcServiceImpl implements AcService {

	@Resource
	LoveActivityDAO loveActivityDao;
	
	@Override
	public void save(LoveActivity transientInstance) {//���ӻ
		// TODO Auto-generated method stub
		loveActivityDao.save(transientInstance);
	}

	@Override
	public void delete(LoveActivity persistentInstance) {//ɾ���
		// TODO Auto-generated method stub
		loveActivityDao.delete(persistentInstance);
	}

	
	@Override
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public LoveActivity findById(Short id) {//ͨ��Id�һ
		// TODO Auto-generated method stub
		return loveActivityDao.findById(id);
	}

	@Override
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List findAll() {//����ȫ���
		// TODO Auto-generated method stub
		return loveActivityDao.findAll();
	}

	@Override
	public void deleteAcByID(Short id) {
		// TODO Auto-generated method stub
		loveActivityDao.deleteAcByID(id);//ɾ���
	}

	@Override
	public void updateActivity(Short id,LoveActivity la) {//���»--1
		// TODO Auto-generated method stub
		  //loveActivityDao.updateACByID(id);
		loveActivityDao.updateActivity(id,la);
	}

	@Override
	public void updateActivity2(LoveActivity la) {//���»--2
		// TODO Auto-generated method stub
		  //loveActivityDao.updateACByID(id);
		loveActivityDao.updateActivity2(la);
	}

	 

}
