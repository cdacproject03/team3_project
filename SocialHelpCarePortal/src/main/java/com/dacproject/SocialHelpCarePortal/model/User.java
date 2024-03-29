package com.dacproject.SocialHelpCarePortal.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.PrimaryKeyJoinColumn;

@Entity
public class User {
	
    @Id  
    @GeneratedValue 
    @PrimaryKeyJoinColumn  
	private int userId;
	public User() {
		super();
	}
	private String name;
	private String password;
	private String type;

	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public User(String name, String password, String type) {
		this.name = name;
		this.password = password;
		this.type = type;

	}

	
	

}
