package org.lwt.BMweb.model;

public class Zbm_info {

	public int getZ_id() {
		return z_id;
	}
	public void setZ_id(int z_id) {
		this.z_id = z_id;
	}
	public Shool getShool() {
		return shool;
	}
	public void setShool(Shool shool) {
		this.shool = shool;
	}
	public String getIdentity() {
		return identity;
	}
	public void setIdentity(String identity) {
		this.identity = identity;
	}
	public Shool getShool_1() {
		return shool_1;
	}
	public void setShool_1(Shool shool_1) {
		this.shool_1 = shool_1;
	}
	public Professional getPro_1() {
		return pro_1;
	}
	public void setPro_1(Professional pro_1) {
		this.pro_1 = pro_1;
	}
	public Professional getPro_2() {
		return pro_2;
	}
	public void setPro_2(Professional pro_2) {
		this.pro_2 = pro_2;
	}
	public Professional getPro_3() {
		return pro_3;
	}
	public void setPro_3(Professional pro_3) {
		this.pro_3 = pro_3;
	}
	public Professional getPro_4() {
		return pro_4;
	}
	public void setPro_4(Professional pro_4) {
		this.pro_4 = pro_4;
	}

	private int z_id;
	private String identity;//身份证

	//志愿
	private Shool shool;
	private Shool shool_1;
	
	//专业
	private Professional pro_1;
	private Professional pro_2;
	private Professional pro_3;
	private Professional pro_4;	
}
