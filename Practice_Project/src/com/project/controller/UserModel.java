package com.project.controller;

import java.io.Serializable;

public class UserModel implements Serializable{
	
	private int  id;
	private String fname;
	private long number;
	
	
	public UserModel(String fname, long number) {
		super();
		this.fname = fname;
		this.number = number;
	}
	
	public int getId() {
		return id;
	}
	

	public String getFname() {
		return fname;
	}
	
	
	public long getNumber() {
		return number;
	}
		
}


