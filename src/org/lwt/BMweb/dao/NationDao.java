package org.lwt.BMweb.dao;

import java.util.List;

import org.lwt.BMweb.model.Nation;

public interface NationDao {

	Nation get(Integer id);//返回某个
	
	int delete(int id);//删除
	
	void update(Nation nation);//更新

	Integer save(Nation nation);//添加
	
	public List<Nation> getAllNation();//返回全部的民族
}
