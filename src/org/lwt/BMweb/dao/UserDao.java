package org.lwt.BMweb.dao;

import java.util.List;

import org.lwt.BMweb.model.User;

public interface UserDao {

	User get(Integer id);//返回某个
	
	int delete(int id);//删除
	
	void update(User user);//更新

	Integer save(User user);//添加
	
	List findByNameAndPass(String identity, String u_pwd);
	
	List findByIdentity(String identity);
	
}
