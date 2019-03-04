package org.lwt.BMweb.dao.impl;

import org.lwt.BMweb.dao.MyHibernateDaoSupport;
import org.lwt.BMweb.dao.ShoolDao;
import org.lwt.BMweb.model.Shool;
import java.util.List;

public class ShoolDaoImpl extends MyHibernateDaoSupport implements ShoolDao {

	@Override
	public Shool get(Integer id) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().get(Shool.class, id);
	}

	@Override
	public Integer save(Shool shool) {
		// TODO Auto-generated method stub
		return (Integer) getHibernateTemplate().save(shool);
	}

	@Override
	public void update(Shool shool) {
		getHibernateTemplate().update(shool);

	}
	
	@Override
	public int delete(int id) {
		Shool shool = get(id);
		try {
			getHibernateTemplate().delete(shool);
		} catch (Exception e) {
			// TODO: handle exception
			return 0;
		}
		return 1;
	}

	@Override
	public List<Shool> getAllShool() {
		return getHibernateTemplate().find("from Shool");
	}
	
}
