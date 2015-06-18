package com.zhbit.dao.point;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.zhbit.domain.point.Point;

public class PointDaoImpl implements PointDao {

	@Resource
	private SessionFactory sessionFactory;
	
	public Point insertPoint(Point point) {/*插入景观数据*/
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().persist(point);

		return point;
	}

	public Point updatePoint(Point point) {/*修改景观数据*/
		// TODO Auto-generated method stub			
					String hql = "update Point point  set point.pname = ? , point.pinformation = ? , point.images = ? , point.images2 = ? where point.pname =?";  
					Query query = sessionFactory.getCurrentSession().createQuery(hql);
					query.setString(0, point.getPname());	
					query.setString(1, point.getPinformation());	
					query.setString(2, point.getPimages());	
					query.setString(3, point.getPimages2());					
					query.executeUpdate();
		return point;
	}

	public void deletePoint(int pid) {/*删除景观数据*/
		// TODO Auto-generated method stub
		String hql = "delete Point point where id= "+pid+" ";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.executeUpdate();
	}

	public List searchPoint(String whereSql) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@SuppressWarnings("unchecked")
	public List<Point> getPoints(){/*查询全部景观*/
		List<Point> points=null;
		String hql = "from Point order by id";		
		Query query = sessionFactory.getCurrentSession().createQuery(hql); 
		points=query.list();
		return points;
		}
	
	@SuppressWarnings("unchecked")
	public List<Point> getSPoint(int pid){/*查询单个景观*/
		List<Point> points=null;
		String hql = "from Point where id= "+pid+" ";
		Query query = sessionFactory.getCurrentSession().createQuery(hql); 
		points=query.list();
		return points;
		}
}
