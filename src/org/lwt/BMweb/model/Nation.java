package org.lwt.BMweb.model;

public class Nation {

	public String getN_name() {
		return n_name;
	}

	public void setN_name(String n_name) {
		this.n_name = n_name;
	}

	
	public int getN_id() {
		return n_id;
	}

	public void setN_id(int n_id) {
		this.n_id = n_id;
	}
	
	private int n_id;
	private String n_name;
	
	public Nation(){
		super();
	}
}
