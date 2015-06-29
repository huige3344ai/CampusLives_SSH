
package com.zhbit.actions;


import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;


import com.zhbit.domain.Role;
import com.zhbit.domain.User;
import com.zhbit.domain.food.Comments;
import com.zhbit.domain.food.Restaurant;

import com.zhbit.services.FoodService;
import com.zhbit.services.RestaurantService;
import com.zhbit.services.UserService;


public class RestaurantAction {
		@Resource
		private RestaurantService rs;
		@Resource
		private FoodService fs;
		@Resource
		private UserService us;
		
		final int pageSize = 5;
		public List<Restaurant> relist;
		public List<Comments> ctlist ;
	

		
		public float width ;
		public Restaurant re;
		
		private File file;//封装上传文件属性
		private String fileFileName;//封装上传文件的名称属性
		private String targetName;//保存文件名称属性
		private String dir;//保存文件路径属性
		String path_pic = null;//图片相对路径;

		User u;
		String com;	//评论
		String  score; //用户评分
		int num; //餐厅ID
		int px; //显示星数
		int totalPages;//总页数
		int pageNo = 1;//当前页
		int commenter; //评论人ID
		String rname;//用户权限
		String currency;
		

		public String save_Restaurant() throws IOException{
			User user =new User();
			HttpServletRequest request = ServletActionContext.getRequest();
			user=(User) request.getSession().getAttribute("user");
			re.setUser(user);
			uploadPic();
			re.setImages(path_pic);
			if(rs.saveRestaurant(re)!=null)
			return "Save_Success";
			else
			return "Save_Fail";	

		}


		




		

		
		public String Rt_Restaurant(){
			HttpServletRequest request = ServletActionContext.getRequest();
			re = rs.findid(num);
			//ctlist = fs.findR_id(re.getNum());	
			ctlist = fs.findByPage(pageNo, pageSize, re.getNum());
			request.getSession().setAttribute("ctlist", ctlist);
			totalPages = fs.gettotalPages(re.getNum(),pageSize);
			return "RT_FOOD";
			
			
		}
		
			public String savecomment(){
				//获取session("user");
				User user =new User();
				HttpServletRequest request = ServletActionContext.getRequest();
				user=(User) request.getSession().getAttribute("user");
				/*控制每个用户评论次数
				if(!fs.findComment(re.getNum(), user.getId()).equals(null)){
					return Rt_Restaurant();
				}else{
					保存评论
				
				}*/
				Comments comment = new Comments();
				float sc = Float.parseFloat(score);
				comment.setScore(sc);
				comment.setComment(com);
				comment.setUser(user);
				comment.setRestaurant(re);
				fs.saveComment(comment);
				java.text.DecimalFormat   df   =new   java.text.DecimalFormat("#.00");
				re.setPrice(Float.parseFloat(df.format(fs.selectAVG(re.getNum()))));
				rs.updateprice(re);
				System.out.print(re.getPrice());
				return Rt_Restaurant();
						
		}
		










			public String ChangePage(){
				if(pageNo>totalPages){
					pageNo = totalPages;
				}else if(pageNo<1){
					pageNo = 1;
				}
				HttpServletRequest request = ServletActionContext.getRequest();
				ctlist = fs.findByPage(pageNo, pageSize, re.getNum());
				request.getSession().setAttribute("ctlist", ctlist);
				totalPages = fs.gettotalPages(re.getNum(),pageSize);
				return "RT_FOOD";
			}
		 
			
			public String returnUser(){
				
				HttpServletRequest request = ServletActionContext.getRequest();
				u=us.searchUser(commenter);
				request.setAttribute("u", u);
				Role role = new Role();
				role = fs.searchUser(u.getRole().getRid());
				rname = role.getRname();
				return null;
			}
			
			
		
			public String Rt_Myrestaurants(){
				User user =new User();
				HttpServletRequest request = ServletActionContext.getRequest();
				user=(User) request.getSession().getAttribute("user");
				relist = rs.finduid(user.getId());
				return "Personal_center";
			}
			
			
			//删除			
			public String Delete_Messages(){
				rs.Delete(num);
				return Rt_Myrestaurants();
			}
			//跳转更新页面
			public String Rt_Update_Messages(){
				re = rs.findid(num);
				return "Rt_Update_Messages";
			}
			
			
			//更新
			public String Update_Messages(){
				re.setNum(num);
				rs.update(re);
				return "Alter_Success";
			}
		
			
			
			
			
			
		
			//保存图片到服务器
			public void uploadPic() throws IOException {
				HttpServletRequest request = ServletActionContext.getRequest();
				User user_pic = (User) request.getSession().getAttribute("user");
				int user_id = user_pic.getId();//获取商家的信息用于保存图片路径
				
				String realpath = request.getSession().getServletContext().getRealPath("/images/food/resutant");//保存路径
				if(fileFileName==null||(fileFileName.trim().equals(""))){
					
				}else{
					targetName = generateFileName(fileFileName);//生成文件名
					this.setDir(realpath+"\\"+targetName);
					path_pic = "images/food/resutant/"+targetName;
					File parentDir = new File(realpath,targetName);		
					FileUtils.copyFile(file,parentDir);													
				}
		
				

			}
			//变换文件名称（当前时间生成）
			public String generateFileName(String fileName){
				DateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
				String formatdate = format.format(new Date());
				int random = new Random().nextInt(10000);
				int position = fileName.lastIndexOf(".");
				String  extendstion  = fileName.substring(position);//后缀名		
				String newfileNmae = formatdate+random+extendstion;
				return newfileNmae;			
			}		
		
		
		
		
		
		
		public float getWidth() {
			return width;
		}


		public void setWidth(float width) {
			this.width = width;
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


		public int getCommenter() {
			return commenter;
		}



		public void setCommenter(int commenter) {
			this.commenter = commenter;
		}

		public User getU() {
			return u;
		}



		public void setU(User u) {
			this.u = u;
		}



		public String getRname() {
			return rname;
		}



		public void setRname(String rname) {
			this.rname = rname;
		}
		
		public Restaurant getRe() {
			return re;
		}



		public void setRe(Restaurant re) {
			this.re = re;
		}
		
		public String getCurrency() {
			return currency;
		}



		public void setCurrency(String currency) {
			this.currency = currency;
		}










		public File getFile() {
			return file;
		}










		public void setFile(File file) {
			this.file = file;
		}










		public String getFileFileName() {
			return fileFileName;
		}










		public void setFileFileName(String fileFileName) {
			this.fileFileName = fileFileName;
		}










		public String getTargetName() {
			return targetName;
		}










		public void setTargetName(String targetName) {
			this.targetName = targetName;
		}










		public String getDir() {
			return dir;
		}










		public void setDir(String dir) {
			this.dir = dir;
		}

}
