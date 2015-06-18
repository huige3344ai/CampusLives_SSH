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
        	  session.setAttribute("tissue", "你还没有登录，请重新登录之后再操作！");
        	  req.getRequestDispatcher("/page/foreground/login.jsp").forward(req, res);
          }else{
        	  //已经登陆,继续此次请求  
              chain.doFilter(request,response); 
          }
	}

	public void destroy() {
	       this.filterConfig = null;
	    }

}
