package com.zhbit.actions;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.zhbit.domain.food.Restaurant;
import com.zhbit.services.RestaurantService;

public class FoodAction extends ActionSupport{
	@Resource
	private RestaurantService rs;
	public Restaurant re;
	

	
	
	
	public String execute() throws Exception{
		/*HttpServletRequest request = ServletActionContext.getRequest();
		num=Integer.parseInt(request.getParameter("num"));*/
	
		
		re=rs.findid(re.getNum());
		ActionContext.getContext().getSession().put("re",re);
		
		return null;
	}
	
	
	
	
	
	
	
	
	
	
	
	


























	public Restaurant getRe() {
		return re;
	}

	public void setRe(Restaurant re) {
		this.re = re;
	}

}
