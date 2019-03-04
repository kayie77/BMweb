package org.lwt.BMweb.dao;

import java.util.List;

import org.lwt.BMweb.model.Zbm_info;

public interface Zbm_infoDao {

	Zbm_info get(Integer id);//返回某个
	
	int delete(int id);//删除
	
	void update(Zbm_info zbminfo);//更新

	Integer save(Zbm_info zbminfo);//添加
	
	public List<Zbm_info> getAllZbm_info();//返回全部的报名信息
	
	List findByIdentity(String identity);
}
