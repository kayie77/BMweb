package org.lwt.BMweb.dao.impl;

import org.lwt.BMweb.dao.MyHibernateDaoSupport;
import org.lwt.BMweb.dao.U_infoDao;
import org.lwt.BMweb.model.U_info;
import java.util.List;

public class U_infoDaoImpl extends MyHibernateDaoSupport implements U_infoDao {

	@Override
	public U_info get(Integer id) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().get(U_info.class, id);
	}

	@Override
	public Integer save(U_info uinfo) {
		// TODO Auto-generated method stub
		return (Integer) getHibernateTemplate().save(uinfo);
	}

	@Override
	public void update(U_info uinfo) {
		getHibernateTemplate().update(uinfo);

	}
	
	@Override
	public int delete(int id) {
		U_info uinfo = get(id);
		try {
			getHibernateTemplate().delete(uinfo);
		} catch (Exception e) {
			// TODO: handle exception
			return 0;
		}
		return 1;
	}

	@Override
	public List<U_info> getAllU_info() {
		return getHibernateTemplate().find("from U_info");
	}
	
	@Override
	public List findByIdentity(String identity) {
		return getHibernateTemplate()
				.find("from U_info where identity = ?", identity); 
	}
}
