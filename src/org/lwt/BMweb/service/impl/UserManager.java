package org.lwt.BMweb.service.impl;

import java.util.List;

import org.lwt.BMweb.dao.UserDao;
import org.lwt.BMweb.model.User;
import org.lwt.BMweb.model.Zbm_info;

public class UserManager {
	
	private UserDao userDao;
	
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public int saveUser(User user) {
		// TODO Auto-generated method stub
		return  userDao.save(user);
	}

	public Object login(String identity, String u_pwd) {
		// TODO Auto-generated method stub
		List result = userDao.findByNameAndPass(identity, u_pwd);
		return result.size()==0 ? null: result.get(0);
	}
	
	//修改密码
	public void updatePwd_info(String identity, String u_pwd,User user) {
		user.setIdentity(identity);
		user.setU_pwd(u_pwd);
		userDao.update(user);
		return;
	}
	
	//验证唯一性
	public Object testByIdentity(String identity) {
			// TODO Auto-generated method stub
			List result = userDao.findByIdentity(identity);
			return result.size()==0 ? null: result.get(0);
		}

}
