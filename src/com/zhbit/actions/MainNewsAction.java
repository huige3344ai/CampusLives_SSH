package com.zhbit.actions;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.zhbit.domain.LoveActivity;
import com.zhbit.domain.food.Restaurant;
import com.zhbit.domain.lostandfind.Find;
import com.zhbit.domain.lostandfind.Lost;
import com.zhbit.domain.point.Point;
import com.zhbit.services.AcService;
import com.zhbit.services.RestaurantService;
import com.zhbit.services.lostandfind.LostService;
import com.zhbit.services.point.PointService;

@SuppressWarnings("serial")
public class MainNewsAction extends ActionSupport {
	@Resource
	AcService ac;
	@Resource
	LostService lostser;
	@Resource
	private PointService pointService;
	@Resource
	private RestaurantService rs;
	
	List<LoveActivity> loves;
	LoveActivity love;
	
	Lost lost;
	private List<Lost> lostlist;
	Find find;
	private List<Find> findlist;
	
	private Point point;
	private List<Point> pointlist;	
	
	private List<Restaurant> relist;	
	Restaurant  restaurant;
	
	
	HttpServletRequest request = ServletActionContext.getRequest();	


	@SuppressWarnings("unchecked")
	@Override
	public String execute(){
		// TODO Auto-generated method stub
		loves = ac.findAll();	
		
		pointlist=pointService.getPoints();
		
		lostlist=lostser.getLost();
		findlist=lostser.getFind();
		
		relist = rs.findid(0, 5);
		
		if(loves.size()>5){
		loves.subList(0,5);	
		}

		if(lostlist.size()>3){
			lostlist.subList(0,3);	
			}
		if(findlist.size()>2){
			findlist.subList(0,2);	
			}
		
		if(pointlist.size()>5){
			pointlist.subList(0,5);	
		}	
		
		
		request.setAttribute("loves", loves);
		request.setAttribute("lostlist", lostlist);
		request.setAttribute("findlist", findlist);
		request.setAttribute("pointlist", pointlist);
		request.setAttribute("relist", relist);
		
		return "repage";
	}

	public LoveActivity getLove() {
		return love;
	}

	public void setLove(LoveActivity love) {
		this.love = love;
	}

	
	public List<LoveActivity> getLoves() {
		return loves;
	}

	public void setLoves(List<LoveActivity> loves) {
		this.loves = loves;
	}

	public List<Lost> getLostlist() {
		return lostlist;
	}

	public void setLostlist(List<Lost> lostlist) {
		this.lostlist = lostlist;
	}

	public List<Find> getFindlist() {
		return findlist;
	}

	public void setFindlist(List<Find> findlist) {
		this.findlist = findlist;
	}

	public List<Point> getPointlist() {
		return pointlist;
	}

	public void setPointlist(List<Point> pointlist) {
		this.pointlist = pointlist;
	}

	public Point getPoint() {
		return point;
	}

	public void setPoint(Point point) {
		this.point = point;
	}

	public List<Restaurant> getRelist() {
		return relist;
	}

	public void setRelist(List<Restaurant> relist) {
		this.relist = relist;
	}

	public RestaurantService getRs() {
		return rs;
	}

	public void setRs(RestaurantService rs) {
		this.rs = rs;
	}


	
	
	

	

}
