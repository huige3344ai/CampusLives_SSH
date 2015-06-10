
package com.zhbit.actions;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.zhbit.domain.food.Comments;
import com.zhbit.domain.food.Restaurant;

import com.zhbit.services.FoodService;
import com.zhbit.services.RestaurantService;


public class RestaurantAction {
		@Resource
		private RestaurantService rs;
		@Resource
		private FoodService fs;
		
		
		public List<Restaurant> relist;
		public List<Comments> ctlist ;
		

		public Restaurant re;
		public float width ;
		int num;
		int px;

		public int getPx() {
			return px;
		}



		public void setPx(int px) {
			this.px = px;
		}



		public String execute() throws Exception{
			HttpServletRequest request = ServletActionContext.getRequest();
			relist = rs.findid();
			request.setAttribute("relist", relist);
			
			return null;
		}
		

		
		public String Rt_Restaurant(){
			
			re = rs.findid(num);
			ctlist = fs.findR_id(re.getNum());
		
			return "RT_FOOD";
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		public float getWidth() {
			return width;
		}


		public void setWidth(float width) {
			this.width = width;
		}


		public Restaurant getR() {
			return re;
		}


		public void setR(Restaurant r) {
			this.re = r;
		}


		public List<Restaurant> getRelist() {
			return relist;
		}


		public void setRelist(List<Restaurant> relist) {
			this.relist = relist;
		}
		
		public int getNum() {
			return num;
		}

		public void setNum(int num) {
			this.num = num;
		}
		
		
		
		
		


	
	
	
}
