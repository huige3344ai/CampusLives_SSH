package com.zhbit.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.zhbit.domain.ActivityApply;

/**
 * A data access object (DAO) providing persistence and search support for
 * ActivityApply entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.zhbit.domain.ActivityApply
 * @author MyEclipse Persistence Tools
 */
@Repository("activityApplyDao")
public class ActivityApplyDAO extends HibernateDaoSupport {
	private static final Log log = LogFactory.getLog(ActivityApplyDAO.class);
	// property constants
	public static final String AC_ID = "acId";
	public static final String AC_NAME = "acName";
	public static final String _UID = "UId";
	public static final String _UNAME = "UName";
	public static final String _UTEL = "UTel";

	protected void initDao() {
		// do nothing
	}

	public void save(ActivityApply transientInstance) {
		log.debug("saving ActivityApply instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(ActivityApply persistentInstance) {
		log.debug("deleting ActivityApply instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public ActivityApply findById(java.lang.Short id) {
		log.debug("getting ActivityApply instance with id: " + id);
		try {
			ActivityApply instance = (ActivityApply) getHibernateTemplate()
					.get("com.zhbit.domain.ActivityApply", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(ActivityApply instance) {
		log.debug("finding ActivityApply instance by example");
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
		log.debug("finding ActivityApply instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from ActivityApply as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByAcId(Object acId) {
		return findByProperty(AC_ID, acId);
	}

	public List findByAcName(Object acName) {
		return findByProperty(AC_NAME, acName);
	}

	public List findByUId(Object UId) {
		return findByProperty(_UID, UId);
	}

	public List findByUName(Object UName) {
		return findByProperty(_UNAME, UName);
	}

	public List findByUTel(Object UTel) {
		return findByProperty(_UTEL, UTel);
	}

	public List findAll() {
		log.debug("finding all ActivityApply instances");
		try {
			String queryString = "from ActivityApply";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public ActivityApply merge(ActivityApply detachedInstance) {
		log.debug("merging ActivityApply instance");
		try {
			ActivityApply result = (ActivityApply) getHibernateTemplate()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(ActivityApply instance) {
		log.debug("attaching dirty ActivityApply instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(ActivityApply instance) {
		log.debug("attaching clean ActivityApply instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static ActivityApplyDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (ActivityApplyDAO) ctx.getBean("ActivityApplyDAO");
	}
}