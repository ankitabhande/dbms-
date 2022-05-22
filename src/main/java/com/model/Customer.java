package com.model;

public class Customer {
	private int id;
	private String fname;
	private String lname;
	private String email;
	private String pass;
	private String mobno;
	public Customer( String fname, String lname, String email, String pass, String mobno) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.pass = pass;
		this.mobno = mobno;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getMobno() {
		return mobno;
	}
	public void setMobno(String mobno) {
		this.mobno = mobno;
	}
	
}
