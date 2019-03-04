package org.lwt.BMweb.model;

import java.sql.Date;

public class U_info {
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getPolitical() {
		return political;
	}
	public void setPolitical(String political) {
		this.political = political;
	}
	public String getGradShool() {
		return gradShool;
	}
	public void setGradShool(String gradShool) {
		this.gradShool = gradShool;
	}
	public Date getGradTime() {
		return gradTime;
	}
	public void setGradTime(Date gradTime) {
		this.gradTime = gradTime;
	}
	public String getGradCate() {
		return gradCate;
	}
	public void setGradCate(String gradCate) {
		this.gradCate = gradCate;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getResults() {
		return results;
	}
	public void setResults(String results) {
		this.results = results;
	}
	public String getHomeAddress() {
		return homeAddress;
	}
	public void setHomeAddress(String homeAddress) {
		this.homeAddress = homeAddress;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getT_name() {
		return t_name;
	}
	public void setT_name(String t_name) {
		this.t_name = t_name;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getIdentity() {
		return identity;
	}
	public void setIdentity(String identity) {
		this.identity = identity;
	}
	public Nation getNation() {
		return nation;
	}
	public void setNation(Nation nation) {
		this.nation = nation;
	}
	public Place getPlace() {
		return place;
	}
	public void setPlace(Place place) {
		this.place = place;
	}
	
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}

	//个人信息
	private int u_id;//id

	private String identity;//身份证
	private String name;//名字
	private String sex;//性别
	private Date birthday;//生日
	private Nation nation;//民族  （外键）
	private Place place ;//籍贯  (外键)
	private String political ;//政治面貌
	private String gradShool  ;//毕业学校
	private Date gradTime ;//毕业时间
	private String gradCate;//考生类型
	private String education;//学历
	private String results;//高考成绩
	private String homeAddress;//身份证住址

	//联系方式
	private String address;//通信地址
	private String t_name;//收信人
	private String code;//邮编
	private String telephone;//联系电话
	private String email;//邮箱
	private String qq;//qq
	private String remarks;//备注

	public U_info(){
		super();
	}
}
