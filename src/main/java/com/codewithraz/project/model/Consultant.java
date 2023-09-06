package com.codewithraz.project.model;

public class Consultant {
	
	    private int id_no;
	    private String name;
	    private String country;
	    private String email;
	    private String gender;
		public Consultant(int id_no, String name, String country, String email, String gender) {
			super();
			this.id_no = id_no;
			this.name = name;
			this.country = country;
			this.email = email;
			this.gender = gender;
		}
		public Consultant() {
			// TODO Auto-generated constructor stub
		}
		public int getId_no() {
			return id_no;
		}
		public void setId_no1(int id_no) {
			this.id_no = id_no;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getCountry() {
			return country;
		}
		public void setCountry(String country) {
			this.country = country;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getGender() {
			return gender;
		}
		public void setGender(String gender) {
			this.gender = gender;
		}
		public void setId_no(int id_no) {
			// TODO Auto-generated method stub
			
		}
	    
	    // Getters and setters for the fields
	

}
