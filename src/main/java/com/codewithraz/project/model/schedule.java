package com.codewithraz.project.model;

import java.sql.Date;

public class schedule {
	private int id;
	private String name;
	private  String email;
	private String jobcategory;
	private String country;
	private Date datetime;
	public schedule() {
		
	}
	public schedule(String name, String email, String jobcategory, String country, Date datetime) {
		super();
		this.name = name;
		this.email = email;
		this.jobcategory = jobcategory;
		this.country = country;
		this.datetime = datetime;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getJobcategory() {
		return jobcategory;
	}
	public void setJobcategory(String jobcategory) {
		this.jobcategory = jobcategory;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public Date getDatetime() {
		return datetime;
	}
	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	

}
