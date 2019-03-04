package org.lwt.BMweb.service.impl;

import org.lwt.BMweb.dao.Bbm_infoDao;
import org.lwt.BMweb.dao.ShoolDao;
import org.lwt.BMweb.dao.ProfessionalDao;
import org.lwt.BMweb.model.Bbm_info;

import java.util.List;

public class Bbm_infoManager {
	
	public Bbm_infoDao getBbm_infoDao() {
		return bbm_infoDao;
	}
	public void setBbm_infoDao(Bbm_infoDao bbm_infoDao) {
		this.bbm_infoDao = bbm_infoDao;
	}
	
	public ShoolDao getShoolDao() {
		return shoolDao;
	}
	public void setShoolDao(ShoolDao shoolDao) {
		this.shoolDao = shoolDao;
	}
	public ProfessionalDao getProfessionalDao() {
		return professionalDao;
	}
	public void setProfessionalDao(ProfessionalDao professionalDao) {
		this.professionalDao = professionalDao;
	}
	
	//添加专科报名信息
	public int addBbm_info(Integer shool,Integer pro1,Integer pro2,Integer pro3,Integer pro4,String identity,Bbm_info bbm_info) {
		bbm_info.setIdentity(identity);
		bbm_info.setShool(shoolDao.get(shool));
		bbm_info.setPro_1(professionalDao.get(pro1));
		bbm_info.setPro_2(professionalDao.get(pro2));
		bbm_info.setPro_3(professionalDao.get(pro3));
		bbm_info.setPro_4(professionalDao.get(pro4));
		return getBbm_infoDao().save(bbm_info);
	}
	
	//修改专科用户志愿信息
	public void updateU_info(Integer shool,Integer pro1,Integer pro2,Integer pro3,Integer pro4,String identity,Bbm_info bbm_info) {
		bbm_info.setIdentity(identity);
		bbm_info.setShool(shoolDao.get(shool));
		bbm_info.setPro_1(professionalDao.get(pro1));
		bbm_info.setPro_2(professionalDao.get(pro2));
		bbm_info.setPro_3(professionalDao.get(pro3));
		bbm_info.setPro_4(professionalDao.get(pro4));
		bbm_infoDao.update(bbm_info);
		return;
	}
	
	//验证唯一性
		public Object testByIdentity(String identity) {
			// TODO Auto-generated method stub
			List result = bbm_infoDao.findByIdentity(identity);
			return result.size()==0 ? null: result.get(0);
		}

	private Bbm_infoDao bbm_infoDao;
	private ShoolDao shoolDao;
	private ProfessionalDao professionalDao;

}
