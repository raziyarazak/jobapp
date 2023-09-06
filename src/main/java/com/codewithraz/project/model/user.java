package com.codewithraz.project.model;

public class user {
	
	private int uid;
	private String uName;
	private String uPassword;
	private String uEmail;
	private int uContactNo;
	private String uCatagory;
	private String uCountry;
	private String uGender;
	private String uRole;

	public user() {
		// TODO Auto-generated constructor stub
	}

	

	

	public user(int uid, String uName, String uPassword, String uEmail, int uContactNo, String uCatagory,
			String uCountry, String uGender, String uRole) {
		super();
		this.uid = uid;
		this.uName = uName;
		this.uPassword = uPassword;
		this.uEmail = uEmail;
		this.uContactNo = uContactNo;
		this.uCatagory = uCatagory;
		this.uCountry = uCountry;
		this.uGender = uGender;
		this.uRole = uRole;
	}





	public int getUid() {
		return uid;
	}





	public void setUid(int uid) {
		this.uid = uid;
	}





	public String getuName() {
		return uName;
	}





	public void setuName(String uName) {
		this.uName = uName;
	}





	public String getuPassword() {
		return uPassword;
	}





	public void setuPassword(String uPassword) {
		this.uPassword = uPassword;
	}





	public String getuEmail() {
		return uEmail;
	}





	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}





	public int getuContactNo() {
		return uContactNo;
	}





	public void setuContactNo(int uContactNo) {
		this.uContactNo = uContactNo;
	}





	public String getuCatagory() {
		return uCatagory;
	}





	public void setuCatagory(String uCatagory) {
		this.uCatagory = uCatagory;
	}





	public String getuCountry() {
		return uCountry;
	}





	public void setuCountry(String uCountry) {
		this.uCountry = uCountry;
	}





	public String getuGender() {
		return uGender;
	}





	public void setuGender(String uGender) {
		this.uGender = uGender;
	}





	public String getuRole() {
		return uRole;
	}





	public void setuRole(String uRole) {
		this.uRole = uRole;
	}





	
	

}
