package org.lwt.BMweb.dao.impl;

import java.util.List;

import org.lwt.BMweb.dao.MyHibernateDaoSupport;
import org.lwt.BMweb.dao.UserDao;
import org.lwt.BMweb.model.User;


public class UserDaoImpl extends MyHibernateDaoSupport implements UserDao {

	@Override
	public User get(Integer id) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().get(User.class, id);
	}

	@Override
	public Integer save(User user) {
		// TODO Auto-generated method stub
		return (Integer) getHibernateTemplate().save(user);
	}

	@Override
	public void update(User user) {
		getHibernateTemplate().update(user);

	}
	
	@Override
	public int delete(int id) {
		User user = get(id);
		try {
			getHibernateTemplate().delete(user);
		} catch (Exception e) {
			// TODO: handle exception
			return 0;
		}
		return 1;
	}

	@Override
	public List findByNameAndPass(String identity, String u_pwd) {
		return getHibernateTemplate()
				.find("from User where identity = ? and u_pwd= ? ", identity, u_pwd); 
	}
	
	@Override
	public List findByIdentity(String identity) {
		return getHibernateTemplate()
				.find("from User where identity = ?", identity); 
	}
	
/*	@Override
	public List<Admin> getAllAdmin() {
		return getHibernateTemplate().find("from Question");
	}*/
	
}
