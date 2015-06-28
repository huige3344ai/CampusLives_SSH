
package com.zhbit.dao.lostandfind;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;


import com.zhbit.domain.lostandfind.Find;
import com.zhbit.domain.lostandfind.Findreply;
import com.zhbit.domain.lostandfind.Lost;
import com.zhbit.domain.lostandfind.Lostreply;



public class LAFDao {

	@Resource
	private SessionFactory sessionFactory;
	
	
	
	//添加失物信息
	public Lost insertLost(Lost lost) {
		sessionFactory.getCurrentSession().persist(lost);
		return lost;
	}
	
	//查询失物
	public List<Lost> getLost() {
		List<Lost> losts = null;
		String hql = "from Lost order by id";		
		Query query = sessionFactory.getCurrentSession().createQuery(hql); 		
		losts =  query.list();
		return losts;
	}
	
	
	//查询一个失物
	public List<Lost> getoneLost(int id) {
		List<Lost> losts = null;
		String hql = "from Lost where id="+id+" ";		
		Query query = sessionFactory.getCurrentSession().createQuery(hql); 		
		losts =  query.list();
		return losts;
	}
	
	//查询个人失物
	public List<Lost> getpersonalLost(String username) {
		List<Lost> losts = null;
		String hql = "from Lost where promulgator='"+username+"'";		
		Query query = sessionFactory.getCurrentSession().createQuery(hql); 		
		losts =  query.list();
		return losts;
	}
	
	
	
	//更新失物信息
	public Lost updateLost(Lost lost) {		
			String hql = "update Lost l set l.lostname = ?, l.lostername = ?, l.address = ?, l.tel = ?, l.description = ?, l.promulgator = ?  where l.id =?";  
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			query.setString(0,lost.getLostname());	
			query.setString(1,lost.getLostername());	
			query.setString(2,lost.getAddress());	
			query.setString(3,lost.getTel());			
			query.setString(4,lost.getDescription());
			query.setString(5,lost.getPromulgator());
			query.setInteger(6,lost.getId());
			query.executeUpdate();
	
		return lost;
	
	}
	//删除失物
	public void deleteLost(int id){
		String hql="delete from Lost l where l.id="+id+"";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);	
		query.executeUpdate();
		
	}
	
	
	//添加拾到物信息
	public Find insertFind(Find find) {
		sessionFactory.getCurrentSession().persist(find);
		return find;
	}
	
	//查询拾到物
	public List<Find> getFind() {
		List<Find> finds = null;
		String hql = "from Find order by id";		
		Query query = sessionFactory.getCurrentSession().createQuery(hql); 		
		finds =  query.list();
		return finds;
	}
	
	
	//查询一个拾到物
	public List<Find> getoneFind(int id) {
		List<Find> finds = null;
		String hql = "from Find where id="+id+" ";		
		Query query = sessionFactory.getCurrentSession().createQuery(hql); 		
		finds =  query.list();
		return finds;
	}
	
	//查询个人拾到物
	public List<Find> getpersonalFind(String username) {
		List<Find> finds = null;
		String hql = "from Find where promulgator='"+username+"'";		
		Query query = sessionFactory.getCurrentSession().createQuery(hql); 		
		finds =  query.list();
		return finds;
	}
	
	
	
	//更新拾到物信息
	public Find updateFind(Find find) {		
			String hql = "update Find f set f.findname = ?, f.findername = ?, f.address = ?, f.tel = ?, f.description = ?, f.promulgator = ?  where f.id =?"; 
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			query.setString(0, find.getFindname());	
			query.setString(1, find.getFindername());	
			query.setString(2, find.getAddress());	
			query.setString(3, find.getTel());			
			query.setString(4, find.getDescription());
			query.setString(5, find.getPromulgator());
			query.setInteger(6, find.getId());
			query.executeUpdate();
	
		return find;
	
	}
	
	//删除拾到物
	public void deleteFind(int id){
		String hql="delete from Find f where f.id="+id+"";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);	
		query.executeUpdate();
		
	}
	
	//添加拾到物评论
	public Findreply insertFindreply(Findreply findreply) {
		sessionFactory.getCurrentSession().persist(findreply);
		return findreply;
	}
	
	//查询拾到物评论
	public List<Findreply> getFindreply(int id) {
		List<Findreply> findreplys = null;
		String hql = "from Findreply where findid="+id+" ";		
		Query query = sessionFactory.getCurrentSession().createQuery(hql); 		
		findreplys =  query.list();
		return findreplys;
	}
	
	//添加失物评论
	public Lostreply insertLostreply(Lostreply lostreply) {
		sessionFactory.getCurrentSession().persist(lostreply);
		return lostreply;
	}
	
	//查询失物评论
	public List<Lostreply> getLostreply(int id) {
		List<Lostreply> lostreplys = null;
		String hql = "from Lostreply where lostid="+id+" ";		
		Query query = sessionFactory.getCurrentSession().createQuery(hql); 		
		lostreplys =  query.list();
		return lostreplys;
	}
	
	public void deleteLostreply(int id){
		String hql="delete from Lostreply l where l.lostid="+id+"";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);	
		query.executeUpdate();
		
	}
	public void deleteFindreply(int id){
		String hql="delete from Findreply f where f.findid="+id+"";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);	
		query.executeUpdate();
		
	}
	
	public void deleteLostonereply(int id){
		String hql="delete from Lostreply l where l.id="+id+"";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);	
		query.executeUpdate();
		
	}
	
	
	public void deleteFindonereply(int id){
		String hql="delete from Findreply f where f.id="+id+"";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);	
		query.executeUpdate();
		
	}
	
	
	
}