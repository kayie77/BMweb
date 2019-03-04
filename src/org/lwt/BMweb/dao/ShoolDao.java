package org.lwt.BMweb.dao;

import java.util.List;

import org.lwt.BMweb.model.Shool;

public interface ShoolDao {

	Shool get(Integer id);//返回某个
	
	int delete(int id);//删除
	
	void update(Shool shool);//更新

	Integer save(Shool shool);//添加
	
	public List<Shool> getAllShool();//返回全部的民族
}
