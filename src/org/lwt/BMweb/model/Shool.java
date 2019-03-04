package org.lwt.BMweb.model;

public class Shool {
	

	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	public int getS_id() {
		return s_id;
	}
	public void setS_id(int s_id) {
		this.s_id = s_id;
	}
	
	private int s_id;
	private String category;//专科还是本科
	private String s_name;
	
	public Shool(){
		super();
	}

}
