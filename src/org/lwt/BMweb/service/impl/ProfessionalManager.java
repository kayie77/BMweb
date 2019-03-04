package org.lwt.BMweb.service.impl;

import org.lwt.BMweb.dao.ProfessionalDao;

public class ProfessionalManager {
	
	private ProfessionalDao professionalDao;

	public ProfessionalDao getProfessionalDao() {
		return professionalDao;
	}

	public void setProfessionalDao(ProfessionalDao professionalDao) {
		this.professionalDao = professionalDao;
	}

}
