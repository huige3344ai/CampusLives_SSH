/**
 * 
 */
package com.zhbit.services.point;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.zhbit.dao.point.PointDao;
import com.zhbit.dao.point.PointDaoImpl;
import com.zhbit.domain.point.Point;


/**
 * @author Administrator
 * 
 */
@Transactional
public class PointServiceImpl implements PointService {

	@Resource
	PointDao pointDao;


	public Point insertPoint(Point point) {
		// TODO Auto-generated method stub
		return pointDao.insertPoint(point);
	}

	public Point updatePoint(Point point) {
		// TODO Auto-generated method stub
		return pointDao.updatePoint(point);
	}

	
	public void deletePoint(Point point) {
		// TODO Auto-generated method stub
		pointDao.deletePoint(point);

	}

	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public List searchPoint(String whereSql) {
		// TODO Auto-generated method stub
		return pointDao.searchPoint(whereSql);
	}

	public List<Point> getPoints(){
		return pointDao.getPoints();
		}
}
