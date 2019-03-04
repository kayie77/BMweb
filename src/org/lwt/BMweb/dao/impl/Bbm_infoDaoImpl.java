package org.lwt.BMweb.dao.impl;

import org.lwt.BMweb.dao.MyHibernateDaoSupport;
import org.lwt.BMweb.dao.Bbm_infoDao;
import org.lwt.BMweb.model.Bbm_info;
import java.util.List;

public class Bbm_infoDaoImpl extends MyHibernateDaoSupport implements Bbm_infoDao {

	@Override
	public Bbm_info get(Integer id) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().get(Bbm_info.class, id);
	}

	@Override
	public Integer save(Bbm_info bbminfo) {
		// TODO Auto-generated method stub
		return (Integer) getHibernateTemplate().save(bbminfo);
	}

	@Override
	public void update(Bbm_info bbminfo) {
		getHibernateTemplate().update(bbminfo);

	}
	
	@Override
	public int delete(int id) {
		Bbm_info bbminfo = get(id);
		try {
			getHibernateTemplate().delete(bbminfo);
		} catch (Exception e) {
			// TODO: handle exception
			return 0;
		}
		return 1;
	}

	@Override
	public List<Bbm_info> getAllBbm_info() {
		return getHibernateTemplate().find("from Bbm_info");
	}
	
	@Override
	public List findByIdentity(String identity) {
		return getHibernateTemplate()
				.find("from Bbm_info where identity = ?", identity); 
	}
}
