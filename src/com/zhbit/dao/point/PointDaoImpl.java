package com.zhbit.dao.point;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.zhbit.domain.point.Point;

public class PointDaoImpl implements PointDao {

	@Resource
	private SessionFactory sessionFactory;
	
	public Point insertPoint(Point point) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().persist(point);

		return point;
	}

	public Point updatePoint(Point point) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().merge(point);
		return point;
	}

	public void deletePoint(Point point) {
		// TODO Auto-generated method stub

	}

	public List searchPoint(String whereSql) {
		// TODO Auto-generated method stub
		return null;
	}
	@SuppressWarnings("unchecked")
	public List<Point> getPoints(){
		List<Point> points=null;
		String hql = "from Point order by id";		
		Query query = sessionFactory.getCurrentSession().createQuery(hql); 
		points=query.list();
		return points;
		}
}
