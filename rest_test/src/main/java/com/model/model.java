package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity

public class model {
	
	@Id
	@GeneratedValue
	private int id;
	
	@Column
	private int zipcode;
	
	@Column
	private float risk_level;
	
	@Column
	private String city;

	@Column
	private String state;
	
	
	
	
	public model() {
		// TODO Auto-generated constructor stub
	}




	public model(int id, int zipcode, float risk_level, String city, String state) {
		super();
		this.id = id;
		this.zipcode = zipcode;
		this.risk_level = risk_level;
		this.city = city;
		this.state = state;
	}




	public int getId() {
		return id;
	}




	public void setId(int id) {
		this.id = id;
	}




	public int getZipcode() {
		return zipcode;
	}




	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}




	public float getRisk_level() {
		return risk_level;
	}




	public void setRisk_level(float risk_level) {
		this.risk_level = risk_level;
	}




	public String getCity() {
		return city;
	}




	public void setCity(String city) {
		this.city = city;
	}




	public String getState() {
		return state;
	}




	public void setState(String state) {
		this.state = state;
	}
	
	



}
