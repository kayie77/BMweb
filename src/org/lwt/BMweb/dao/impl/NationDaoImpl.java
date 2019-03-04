package org.lwt.BMweb.dao.impl;

import org.lwt.BMweb.dao.MyHibernateDaoSupport;
import org.lwt.BMweb.dao.NationDao;
import org.lwt.BMweb.model.Nation;
import java.util.List;

public class NationDaoImpl extends MyHibernateDaoSupport implements NationDao {

	@Override
	public Nation get(Integer id) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().get(Nation.class, id);
	}

	@Override
	public Integer save(Nation nation) {
		// TODO Auto-generated method stub
		return (Integer) getHibernateTemplate().save(nation);
	}

	@Override
	public void update(Nation nation) {
		getHibernateTemplate().update(nation);

	}
	
	@Override
	public int delete(int id) {
		Nation nation = get(id);
		try {
			getHibernateTemplate().delete(nation);
		} catch (Exception e) {
			// TODO: handle exception
			return 0;
		}
		return 1;
	}

	@Override
	public List<Nation> getAllNation() {
		return getHibernateTemplate().find("from Nation");
	}
	
}
