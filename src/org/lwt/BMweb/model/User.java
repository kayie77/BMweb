package org.lwt.BMweb.model;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class User {
	

	public int getU_id() {
		return u_id;
	}

	public void setU_id(int u_id) {
		this.u_id = u_id;
	}

	public String getIdentity() {
		return identity;
	}

	public void setIdentity(String identity) {
		this.identity = identity;
	}

	public String getU_pwd() {
		return u_pwd;
	}

	public void setU_pwd(String u_pwd) {
		this.u_pwd = u_pwd;
	}

	public String getU_pwd1() {
		return u_pwd1;
	}

	public void setU_pwd1(String u_pwd1) {
		this.u_pwd1 = u_pwd1;
	}

	private int u_id;
	
	@Size(min=1,max=19,message="身份证长度不符合")
	@Pattern(regexp="^[0-9]+$",message="用户名只能由数字构成")
	private String identity;

	@Size(min=6,max=16,message="密码长度在6-16位之间")
	private String u_pwd;
	private String u_pwd1;
	
	public User(){
		super();
	}
	
	
public User(int u_id, String identity, String u_pwd, String u_pwd1) {
		super();
		this.u_id = u_id;
		this.identity = identity;
		this.u_pwd = u_pwd;
		this.u_pwd1 = u_pwd1;
	}
}
