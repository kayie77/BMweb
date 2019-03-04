package org.lwt.BMweb.dao.impl;

import org.lwt.BMweb.dao.MyHibernateDaoSupport;
import org.lwt.BMweb.dao.Zbm_infoDao;
import org.lwt.BMweb.model.Zbm_info;
import java.util.List;

public class Zbm_infoDaoImpl extends MyHibernateDaoSupport implements Zbm_infoDao {

	@Override
	public Zbm_info get(Integer id) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().get(Zbm_info.class, id);
	}

	@Override
	public Integer save(Zbm_info zbminfo) {
		// TODO Auto-generated method stub
		return (Integer) getHibernateTemplate().save(zbminfo);
	}

	@Override
	public void update(Zbm_info zbminfo) {
		getHibernateTemplate().update(zbminfo);

	}
	
	@Override
	public int delete(int id) {
		Zbm_info zbminfo = get(id);
		try {
			getHibernateTemplate().delete(zbminfo);
		} catch (Exception e) {
			// TODO: handle exception
			return 0;
		}
		return 1;
	}

	@Override
	public List<Zbm_info> getAllZbm_info() {
		return getHibernateTemplate().find("from Zbm_info");
	}
	
	@Override
	public List findByIdentity(String identity) {
		return getHibernateTemplate()
				.find("from Zbm_info where identity = ?", identity); 
	}
}
