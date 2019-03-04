package org.lwt.BMweb.model;

public class Admin {
	
	public int getA_id() {
		return a_id;
	}

	public void setA_id(int a_id) {
		this.a_id = a_id;
	}

	public String getIdentity() {
		return Identity;
	}

	public void setIdentity(String identity) {
		Identity = identity;
	}

	public String getA_pwd() {
		return a_pwd;
	}

	public void setA_pwd(String a_pwd) {
		this.a_pwd = a_pwd;
	}

	private int a_id;
	private String Identity;
	private String a_pwd;
	
	public Admin(){
		super();
	}
	
}
