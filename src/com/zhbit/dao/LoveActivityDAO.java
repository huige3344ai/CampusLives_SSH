package com.zhbit.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.classic.Session;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.sun.faces.lifecycle.ApplyRequestValuesPhase;
import com.zhbit.domain.ActivityApply;
import com.zhbit.domain.LoveActivity;

/**
 * A data access object (DAO) providing persistence and search support for
 * LoveActivity entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.zhbit.domain.LoveActivity
 * @author MyEclipse Persistence Tools
 */
public class LoveActivityDAO extends HibernateDaoSupport {
	private static final Log log = LogFactory.getLog(LoveActivityDAO.class);
	// property constants
	public static final String AC_NO = "acNo";//活动代号，String 类型
	public static final String AC_NAME = "acName";
	public static final String AC_TIME = "acTime";
	public static final String AC_PLACE = "acPlace";
	public static final String _PNAME = "PName";
	public static final String _PTEL = "PTel";
	public static final String AC_CONTENT = "acContent";

	protected void initDao() {
		// do nothing
	}

	//增加活动
	public void save(LoveActivity transientInstance) {
		log.debug("saving LoveActivity instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	//通过活动id删除活动
		public void deleteAcByID(Short id){
			log.debug("delete LoveActivity instance");
			try {
				LoveActivity la=findById(id);//通过id找到对象
				delete(la);//删除这个对象
				log.debug("delete successful");
			} catch (RuntimeException re) {
				log.error("delete failed", re);
				throw re;
			}
			
		}
	//删除活动，被上面的deleteAcByID调用
	public void delete(LoveActivity persistentInstance) {
		log.debug("deleting LoveActivity instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	//查找全部活动
	public List findAll(){
		log.debug("finding all LoveActivity instances");
		try {
			String queryString = "from LoveActivity";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
	
	//查找活动，被上面的deleteAcByID调用
	public LoveActivity findById(java.lang.Short id) {
		log.debug("getting LoveActivity instance with id: " + id);
		try {
			LoveActivity instance = (LoveActivity) getHibernateTemplate().get(
					"com.zhbit.domain.LoveActivity", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}


	//更该活动信息--方法2（通过调用attachDirty（）方法实现）
	public void updateActivity2(LoveActivity la){
		log.debug("attaching dirty LoveActivity instance");
		try {
			attachDirty(la);
			System.out.println("update well 2 \n");
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			System.out.println("update fail 2 \n");
			throw re;
		}
		
	}
	
	
	
	
	
	
	
	public List findByExample(LoveActivity instance) {
		log.debug("finding LoveActivity instance by example");
		try {
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding LoveActivity instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from LoveActivity as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByAcNo(Object acNo) {
		return findByProperty(AC_NO, acNo);
	}
	public List findByAcName(Object acName) {
		return findByProperty(AC_NAME, acName);
	}

	public List findByAcTime(Object acTime) {
		return findByProperty(AC_TIME, acTime);
	}

	public List findByAcPlace(Object acPlace) {
		return findByProperty(AC_PLACE, acPlace);
	}

	public List findByPName(Object PName) {
		return findByProperty(_PNAME, PName);
	}

	public List findByPTel(Object PTel) {
		return findByProperty(_PTEL, PTel);
	}

	public List findByAcContent(Object acContent) {
		return findByProperty(AC_CONTENT, acContent);
	}

	

	public LoveActivity merge(LoveActivity detachedInstance) {
		log.debug("merging LoveActivity instance");
		try {
			LoveActivity result = (LoveActivity) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	
	public void attachDirty(LoveActivity instance) {
		log.debug("attaching dirty LoveActivity instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			System.out.println("update well\n");
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	//更该活动信息--方法1，(暂时没用到)
	public void updateActivity(Short id,LoveActivity la){
		log.debug("attaching dirty LoveActivity instance");
		try {
			/*
			LoveActivity instance=findById(id);
			getHibernateTemplate().saveOrUpdate(instance);*/
			String hql="update LoveActivity  set acNo="+la.getAcNo()
			            +" acName="+la.getAcName()
			            +" acTime="+la.getAcTime()
			            +" acPlace="+la.getAcPlace()
			            +" PName="+la.getPName()
			            +" PTel= "+la.getPTel()
			            +" acContent="+la.getAcContent()
			            +" where acId="+id;
			Session session=this.getHibernateTemplate().getSessionFactory().openSession();
			
			 
			session.createQuery(hql).executeUpdate();
			
			System.out.println("update well 1 \n");
			
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			System.out.println("update fail 1 \n");
			throw re;
		}
		
	}
	
	
	
	public void attachClean(LoveActivity instance) {
		log.debug("attaching clean LoveActivity instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static LoveActivityDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (LoveActivityDAO) ctx.getBean("LoveActivityDAO");
	}
}