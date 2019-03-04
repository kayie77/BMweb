package org.lwt.BMweb.model;

public class Professional {

	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}

	public int getPro_id() {
		return pro_id;
	}
	public void setPro_id(int pro_id) {
		this.pro_id = pro_id;
	}

	private int pro_id;
	private String p_name;
	private String category;
	
	public Professional(){
		super();
	}
	
}
