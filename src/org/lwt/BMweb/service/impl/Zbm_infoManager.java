package org.lwt.BMweb.service.impl;

import org.lwt.BMweb.dao.Zbm_infoDao;
import org.lwt.BMweb.dao.ShoolDao;
import org.lwt.BMweb.dao.ProfessionalDao;
import org.lwt.BMweb.model.U_info;
import org.lwt.BMweb.model.Zbm_info;

import java.util.List;

public class Zbm_infoManager {
	
	public Zbm_infoDao getZbm_infoDao() {
		return zbm_infoDao;
	}
	public void setZbm_infoDao(Zbm_infoDao zbm_infoDao) {
		this.zbm_infoDao = zbm_infoDao;
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
	public int addZbm_info(Integer shool1,Integer shool2,Integer pro1,Integer pro2,Integer pro3,Integer pro4,String identity,Zbm_info zbm_info) {
		zbm_info.setIdentity(identity);
		zbm_info.setShool(shoolDao.get(shool1));
		zbm_info.setShool_1(shoolDao.get(shool2));
		zbm_info.setPro_1(professionalDao.get(pro1));
		zbm_info.setPro_2(professionalDao.get(pro2));
		zbm_info.setPro_3(professionalDao.get(pro3));
		zbm_info.setPro_4(professionalDao.get(pro4));
		return getZbm_infoDao().save(zbm_info);
	}
	
	//修改专科用户志愿信息
	public void updateU_info(Integer shool1,Integer shool2,Integer pro1,Integer pro2,Integer pro3,Integer pro4,String identity,Zbm_info zbm_info) {
		zbm_info.setIdentity(identity);
		zbm_info.setShool(shoolDao.get(shool1));
		zbm_info.setShool_1(shoolDao.get(shool2));
		zbm_info.setPro_1(professionalDao.get(pro1));
		zbm_info.setPro_2(professionalDao.get(pro2));
		zbm_info.setPro_3(professionalDao.get(pro3));
		zbm_info.setPro_4(professionalDao.get(pro4));
		zbm_infoDao.update(zbm_info);
		return;
	}
	
	//验证唯一性
		public Object testByIdentity(String identity) {
			// TODO Auto-generated method stub
			List result = zbm_infoDao.findByIdentity(identity);
			return result.size()==0 ? null: result.get(0);
		}

	private Zbm_infoDao zbm_infoDao;
	private ShoolDao shoolDao;
	private ProfessionalDao professionalDao;

}
