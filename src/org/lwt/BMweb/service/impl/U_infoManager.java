package org.lwt.BMweb.service.impl;

import org.lwt.BMweb.dao.NationDao;
import org.lwt.BMweb.dao.PlaceDao;
import org.lwt.BMweb.dao.U_infoDao;
import org.lwt.BMweb.model.U_info;

import java.util.List;

public class U_infoManager {
	
	public U_infoDao getU_infoDao() {
		return u_infoDao;
	}
	public void setU_infoDao(U_infoDao u_infoDao) {
		this.u_infoDao = u_infoDao;
	}
	public NationDao getNationDao() {
		return nationDao;
	}
	public void setNationDao(NationDao nationDao) {
		this.nationDao = nationDao;
	}
	public PlaceDao getPlaceDao() {
		return placeDao;
	}
	public void setPlaceDao(PlaceDao placeDao) {
		this.placeDao = placeDao;
	}
	private U_infoDao u_infoDao;
	private NationDao nationDao;
	private PlaceDao placeDao;

	//添加专科用户基本报名信息
	public int addU_info(Integer n_id,Integer p_id ,U_info u_info) {
		u_info.setNation(nationDao.get(n_id));
		u_info.setPlace(placeDao.get(p_id));
		return getU_infoDao().save(u_info);
	}
	
	//修改专科用户基本报名信息
	public void updateU_info(Integer n_id,Integer p_id ,U_info u_info) {
		u_info.setNation(nationDao.get(n_id));
		u_info.setPlace(placeDao.get(p_id));
		u_infoDao.update(u_info);
		return;
	}
	
	//验证唯一性
		public Object testByIdentity(String identity) {
			// TODO Auto-generated method stub
			List result = u_infoDao.findByIdentity(identity);
			return result.size()==0 ? null: result.get(0);
		}
	
}
