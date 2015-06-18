package com.zhbit.actions;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import   javax.servlet.Filter;  

import com.zhbit.domain.User;

public  class LoginCheck implements Filter {
	@SuppressWarnings("unused")
	private FilterConfig filterConfig;
	
	public String description() {
		// TODO Auto-generated method stub
		return null;
	}

    public void init(FilterConfig config) throws ServletException {
        this.filterConfig = config;
     }
    
	public void doFilter(ServletRequest   request, ServletResponse response,FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		  HttpServletRequest   req   =   (HttpServletRequest)   request;  
          HttpServletResponse   res   =   (HttpServletResponse)   response; 
          HttpSession session = req.getSession(true);
          User user = (User) session.getAttribute("user");
          if(user==null){
        	  session.setAttribute("tissue", "�㻹û�е�¼�������µ�¼֮���ٲ�����");
        	  req.getRequestDispatcher("/page/foreground/login.jsp").forward(req, res);
          }else{
        	  //�Ѿ���½,�����˴�����  
              chain.doFilter(request,response); 
          }
	}

	public void destroy() {
	       this.filterConfig = null;
	    }

}
