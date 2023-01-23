package com.plantadopter;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class adopter {
	@Id
	String email;
	String name,password;
	long phone;
	int plants;
	
	public adopter(String email) {
		super();
		this.email = email;
	}

	public adopter(String email, String name, String password, long phone,int plants) {
		super();
		this.email = email;
		this.name = name;
		this.password = password;
		this.phone = phone;
		this.plants = plants;
	}
	
	public adopter(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}
	
	public adopter(String email,int plants) {
		super();
		this.email = email;
		this.plants = plants;
		
	}
	
	
	public adopter() {
		super();
		// TODO Auto-generated constructor stub
	}



	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public int getPlants() {
		return plants;
	}
	public void setPlants(int plants) {
		this.plants = plants;
	}
	
	

}
