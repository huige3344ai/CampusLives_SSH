/**
 * 
 */
package com.zhbit.services.point;

import java.util.List;

import com.zhbit.domain.point.Point;


/**
 * @author Administrator
 * 
 */
public interface PointService {

	public Point insertPoint(Point point);

	public Point updatePoint(Point point);

	public void deletePoint(int pid);

	public List searchPoint(String whereSql);
	
	public List<Point> getPoints();
	
	public List<Point> getSPoint(int pid);

}
