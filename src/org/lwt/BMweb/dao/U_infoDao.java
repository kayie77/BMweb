package org.lwt.BMweb.dao;

import java.util.List;

import org.lwt.BMweb.model.U_info;

public interface U_infoDao {

	U_info get(Integer id);//返回某个
	
	int delete(int id);//删除
	
	void update(U_info uinfo);//更新

	Integer save(U_info uinfo);//添加
	
	public List<U_info> getAllU_info();//返回全部的用户基本信息
	
	List findByIdentity(String identity);
}
