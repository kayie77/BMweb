package org.lwt.BMweb.dao;

import java.util.List;

import org.lwt.BMweb.model.Professional;

public interface ProfessionalDao {

	Professional get(Integer id);//返回某个
	
	int delete(int id);//删除
	
	void update(Professional pro);//更新

	Integer save(Professional pro);//添加
	
	public List<Professional> getAllProfessional();//根据学校id返回全部的专业
}
