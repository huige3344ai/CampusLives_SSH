package com.zhbit.actions;

import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.zhbit.domain.User;

public class AnswerInterceptor extends AbstractInterceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unchecked")
	@Override
	public String intercept(ActionInvocation arg) throws Exception {
		// TODO Auto-generated method stub
		@SuppressWarnings("rawtypes")
		Map session = arg.getInvocationContext().getSession();
		User user = (User) session.get("user");
		if(user!=null){
			return arg.invoke();			
		}else{			
			session.put("tissue", "����û�е�¼�޷���������������µ�¼");
			return Action.LOGIN;
		}
	}

}
