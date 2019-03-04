package org.lwt.BMweb.service.impl;

import org.lwt.BMweb.dao.AdminDao;

public class AdminManager {
	
	public AdminDao getAdminDao() {
		return adminDao;
	}

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	private AdminDao adminDao;


}
