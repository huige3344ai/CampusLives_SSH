
package com.zhbit.actions;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.zhbit.domain.food.Restaurant;
import com.zhbit.services.RestaurantService;

public class FoodAction extends ActionSupport{
	@Resource
	private RestaurantService rs;
	final int pageSize = 8;//每页显示8行
	
	
	public List<Restaurant> relist;
	public int pageNo = 1;//当前页
	public int totalPages;//总页面
	private File file;//封装上传文件属性
	
	


	public String Rt_FoodNetwork(){
		HttpServletRequest request = ServletActionContext.getRequest();
		relist = rs.findid(1, pageSize);
		request.setAttribute("relist", relist);
		totalPages = rs.gettotalPages(pageSize);
		
		return "FoodNetwork";
		
	}
	
	
	public String ChangePage(){
		
		if(pageNo>totalPages){
			pageNo = totalPages;
		}else if(pageNo<1){
			pageNo = 1;
		}
		System.out.println(pageNo);
		HttpServletRequest request = ServletActionContext.getRequest();
		relist = rs.findid(pageNo, pageSize);
		request.setAttribute("relist", relist);
		totalPages = rs.gettotalPages(pageSize);
		return "FoodNetwork";
	}
	
	
	
	
	
	
	
	public int getPageNo() {
		return pageNo;
	}


	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}


	public int getTotalPages() {
		return totalPages;
	}


	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}


	public List<Restaurant> getRelist() {
		return relist;
	}


	public void setRelist(List<Restaurant> relist) {
		this.relist = relist;
	}


	public File getFile() {
		return file;
	}


	public void setFile(File file) {
		this.file = file;
	}
	
	
	
	


























	
}
