
package com.zhbit.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.zhbit.domain.User;

/**
 * @author Administrator
 * 
 */
public class UserDaoImpl implements UserDao {
	
	@Resource
	private SessionFactory sessionFactory;
	
	//注册用户
	public User insertUser(User user) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().persist(user);
		return user;

	}

	//更新用户信息
	public User updateUser(User user) {
		// TODO Auto-generated method stub			
			String hql = "update User user  set user.age = ? , user.sex = ?  , user.email = ? where user.userName =?";  
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			query.setInteger(0, user.getAge());	
			query.setString(1, user.getSex());	
			query.setString(2, user.getEmail());			
			query.setString(3, user.getUserName());			
			query.executeUpdate();
	
		return user;
	}

	public void deleteUser(User user) {
		// TODO Auto-generated method stub
		
	}

	public List searchUser(String userName) {
		// TODO Auto-generated method stub
		String hql = "select email from User where userName = ? ";		
		Query query = sessionFactory.getCurrentSession().createQuery(hql); 
		query.setString(0,userName);		
		List list =  query.list();
		return list;
	}
	
	//登录判断
	public List searchUser_only(String username, String password) {
		// TODO Auto-generated method stub	
		String hql = "from User where userName = ? and password= ?";		
		Query query = sessionFactory.getCurrentSession().createQuery(hql); 
		query.setString(0,username);
		query.setString(1,password);		
		List list =  query.list();
		return list;
	}
	
	//修改密码
	public User updatePassword(User user) {
				String hql = "update User  set password = ? where userName = ?";  
				Query query = sessionFactory.getCurrentSession().createQuery(hql);
				query.setString(0, user.getPassword());			
				query.setString(1, user.getUserName());	
//				System.out.print("username:"+user.getUserName());
//				System.out.print("passsword:"+user.getUserName());
				query.executeUpdate();
				return user ;
	
		}

	//上传头像
	@Override
	public int uploadPic(int user_id, String photoPath) {
		// TODO Auto-generated method stub
		int num = 1;
		try {
			String hql = "update User  set imgsrc = ? where id = ?";  
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			query.setString(0, photoPath);			
			query.setInteger(1, user_id);		
			query.executeUpdate();			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			num = 0; 
		}

		return num ;		

	}
	
	public User searchUser(int userid) {
		// TODO Auto-generated method stub
		String hql = "from User where id = ? ";		
		Query query = sessionFactory.getCurrentSession().createQuery(hql); 
		query.setInteger(0,userid);		
		User user =  (User) query.list().get(0);
		return user;
	}
	
	//更新用户类型
	@Override
	public User updateUserType(User user) {
		String hql = "update User user  set  user.role.rid = ?   where user.userName =?";  
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setInteger(0, user.getRole().getRid());	
		query.setString(1, user.getUserName());		
		query.executeUpdate();
		return user;
	}

}
