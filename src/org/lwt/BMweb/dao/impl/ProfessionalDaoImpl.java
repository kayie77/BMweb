package org.lwt.BMweb.dao.impl;

import org.lwt.BMweb.dao.MyHibernateDaoSupport;
import org.lwt.BMweb.dao.ProfessionalDao;
import org.lwt.BMweb.model.Professional;
import java.util.List;

public class ProfessionalDaoImpl extends MyHibernateDaoSupport implements ProfessionalDao {

	@Override
	public Professional get(Integer id) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().get(Professional.class, id);
	}

	@Override
	public Integer save(Professional professional) {
		// TODO Auto-generated method stub
		return (Integer) getHibernateTemplate().save(professional);
	}

	@Override
	public void update(Professional professional) {
		getHibernateTemplate().update(professional);

	}
	
	@Override
	public int delete(int id) {
		Professional professional = get(id);
		try {
			getHibernateTemplate().delete(professional);
		} catch (Exception e) {
			// TODO: handle exception
			return 0;
		}
		return 1;
	}

	@Override
	public List<Professional> getAllProfessional() {
		return getHibernateTemplate().find("from Professional");
	}
	
}
