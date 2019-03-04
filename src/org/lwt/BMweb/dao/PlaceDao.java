package org.lwt.BMweb.dao;

import java.util.List;

import org.lwt.BMweb.model.Place;

public interface PlaceDao {

	Place get(Integer id);//返回某个
	
	int delete(int id);//删除
	
	void update(Place place);//更新

	Integer save(Place place);//添加
	
	public List<Place> getAllPlace();//返回全部的民族
}
