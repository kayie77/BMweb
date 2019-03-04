package org.lwt.BMweb.dao;

import org.lwt.BMweb.model.Admin;

public interface AdminDao {

	Admin get(Integer id);//返回某个
	
	int delete(int id);//删除
	
	void update(Admin admin);//更新

	Integer save(Admin admin);//保存
}
