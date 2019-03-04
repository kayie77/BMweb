package org.lwt.BMweb.dao;

import java.util.List;

import org.lwt.BMweb.model.Bbm_info;

public interface Bbm_infoDao {

	Bbm_info get(Integer id);//返回某个
	
	int delete(int id);//删除
	
	void update(Bbm_info bbminfo);//更新

	Integer save(Bbm_info bbminfo);//添加
	
	public List<Bbm_info> getAllBbm_info();//返回全部的报名信息
	
	List findByIdentity(String identity);
}
