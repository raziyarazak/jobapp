package com.codewithraz.project.model;

public class admin {
	
	private String id;
	private String email;
	private String password;

	public admin() {
		// TODO Auto-generated constructor stub
	}

	public admin(String email, String password) {
		super();
		this.email = email;
		this.password = password;
		
	}

	public admin(String id) {
		super();
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

}
