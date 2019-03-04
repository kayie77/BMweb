package org.lwt.BMweb.dao.impl;

import org.lwt.BMweb.dao.MyHibernateDaoSupport;
import org.lwt.BMweb.dao.AdminDao;
import org.lwt.BMweb.model.Admin;


public class AdminDaoImpl extends MyHibernateDaoSupport implements AdminDao {

	@Override
	public Admin get(Integer id) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().get(Admin.class, id);
	}

	@Override
	public Integer save(Admin admin) {
		// TODO Auto-generated method stub
		return (Integer) getHibernateTemplate().save(admin);
	}

	@Override
	public void update(Admin admin) {
		getHibernateTemplate().update(admin);

	}
	
	@Override
	public int delete(int id) {
		Admin admin = get(id);
		try {
			getHibernateTemplate().delete(admin);
		} catch (Exception e) {
			// TODO: handle exception
			return 0;
		}
		return 1;
	}

/*	@Override
	public List<Admin> getAllAdmin() {
		return getHibernateTemplate().find("from Question");
	}*/
	
}
