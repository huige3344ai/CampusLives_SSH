
package com.zhbit.actions;


import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;


import com.zhbit.domain.User;
import com.zhbit.domain.food.Comments;
import com.zhbit.domain.food.Restaurant;

import com.zhbit.services.FoodService;
import com.zhbit.services.RestaurantService;


public class RestaurantAction {
		@Resource
		private RestaurantService rs;
		@Resource
		private FoodService fs;
		
		
		final int pageSize = 5;
		public List<Restaurant> relist;
		public List<Comments> ctlist ;
		

		public Restaurant re;
		public float width ;
		
	



		String com;	//评论
		String  score; //用户评分
		int num; //餐厅ID
		int px; //显示星数
		int totalPages;//总页数
		int pageNo = 1;//当前页

		
		

		


		



	


		public String execute() throws Exception{
			HttpServletRequest request = ServletActionContext.getRequest();
			relist = rs.findid();
			request.setAttribute("relist", relist);
			
			return null;
		}
		

		
		public String Rt_Restaurant(){
			
			re = rs.findid(num);
			//ctlist = fs.findR_id(re.getNum());	
			ctlist = fs.findByPage(totalPages, pageSize, re.getNum());
			totalPages = fs.gettotalPages(re.getNum(),pageSize);
			return "RT_FOOD";
		}
		
			public String savecomment(){
				//获取session("user");
				User user =new User();
				HttpServletRequest request = ServletActionContext.getRequest();
				user=(User) request.getSession().getAttribute("user");
			/*	控制每个用户评论次数
				if(fs.findComment(re.getNum(), user.getId())!=null){
					return Rt_Restaurant();
				}else{
					
				}*/
					/*保存评论*/
					Comments comment = new Comments();
					float sc = Float.parseFloat(score);
					comment.setScore(sc);
					comment.setComment(com);
					comment.setUser(user);
					comment.setRestaurant(re);
					fs.saveComment(comment);
					return Rt_Restaurant();
						
		}
		
			public String ChangePage(){
				if(pageNo>totalPages){
					pageNo = totalPages;
				}else if(pageNo<1){
					pageNo = 1;
				}
				ctlist = fs.findByPage(pageNo, pageSize, re.getNum());
				totalPages = fs.gettotalPages(re.getNum(),pageSize);
				return "RT_FOOD";
			}
		
		
			public String Rt_Myrestaurants(){
				User user =new User();
				HttpServletRequest request = ServletActionContext.getRequest();
				user=(User) request.getSession().getAttribute("user");
				relist = rs.finduid(user.getId());
				return "Personal_center";
			}
			
			
			public String Delete_Messages(){
				rs.Delete(num);
				return Rt_Myrestaurants();
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
		
		public int getPx() {
			return px;
		}



		public void setPx(int px) {
			this.px = px;
		}
		
		
		




		
		public String getCom() {
			return com;
		}



		public void setCom(String com) {
			this.com = com;
		}



		public String getScore() {
			return score;
		}



		public void setScore(String score) {
			this.score = score;
		}

		public int getTotalPages() {
			return totalPages;
		}



		public void setTotalPages(int totalPages) {
			this.totalPages = totalPages;
		}

		public int getPageNo() {
			return pageNo;
		}



		public void setPageNo(int pageNo) {
			this.pageNo = pageNo;
		}



	
}
