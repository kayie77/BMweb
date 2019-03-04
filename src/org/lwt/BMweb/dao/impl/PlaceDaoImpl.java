package org.lwt.BMweb.dao.impl;

import org.lwt.BMweb.dao.MyHibernateDaoSupport;
import org.lwt.BMweb.dao.PlaceDao;
import org.lwt.BMweb.model.Place;
import java.util.List;

public class PlaceDaoImpl extends MyHibernateDaoSupport implements PlaceDao {

	@Override
	public Place get(Integer id) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().get(Place.class, id);
	}

	@Override
	public Integer save(Place place) {
		// TODO Auto-generated method stub
		return (Integer) getHibernateTemplate().save(place);
	}

	@Override
	public void update(Place place) {
		getHibernateTemplate().update(place);

	}
	
	@Override
	public int delete(int id) {
		Place place = get(id);
		try {
			getHibernateTemplate().delete(place);
		} catch (Exception e) {
			// TODO: handle exception
			return 0;
		}
		return 1;
	}

	@Override
	public List<Place> getAllPlace() {
		return getHibernateTemplate().find("from Place");
	}
	
}
