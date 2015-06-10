/**
 * 
 */
package com.zhbit.actions.point;

import java.util.List;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionSupport;
import com.zhbit.domain.point.Point;
import com.zhbit.services.point.PointService;

/**
 * @author Administrator
 * 
 */
public class PointAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Point point;
	private List<Point> pointlist;


	@Resource
	private PointService pointService;

	public String add() {
		System.out.print(point.getPname());
		pointService.insertPoint(point);
			return this.SUCCESS;
	}

	public String savePoint() {
		return this.SUCCESS;
	}

	public String getPoints(){
		
		pointlist=pointService.getPoints();
		return "list";
	}
	
	public Point getPoint() {
		return point;
	}

	public void setPoint(Point point) {
		this.point = point;
	}

	public PointService getPointService() {
		return pointService;
	}

	public void setPointService(PointService pointService) {
		this.pointService = pointService;
	}
	public List<Point> getPointlist() {
		return pointlist;
	}
}
