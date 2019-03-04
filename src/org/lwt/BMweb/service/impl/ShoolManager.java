package org.lwt.BMweb.service.impl;

import org.lwt.BMweb.dao.ShoolDao;

public class ShoolManager {
	
	public ShoolDao getShoolDao() {
		return shoolDao;
	}

	public void setShoolDao(ShoolDao shoolDao) {
		this.shoolDao = shoolDao;
	}

	private ShoolDao shoolDao;


}
