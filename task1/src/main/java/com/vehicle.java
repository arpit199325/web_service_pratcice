package com;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity

public class vehicle {
	@Column
	private int year;
	@Column
	private int vin;
	@Column
	private String make;
	@Column
	private String model;
	@Column
	private String body_style;
	@Column
	private String anti_theft;
	@Column
	private String owning_type;
	@Column
	private int days_driven;
	@Column
	private int miles_driven;
	@Column
	private int annual_driven;
	@Column
	private int number_of_vehicle;
	
	
	
	public vehicle() {
		// TODO Auto-generated constructor stub
	}



	public vehicle(int year, int vin, String make, String model, String body_style, String anti_theft,
			String owning_type, int days_driven, int miles_driven, int annual_driven, int number_of_vehicle) {
		super();
		this.year = year;
		this.vin = vin;
		this.make = make;
		this.model = model;
		this.body_style = body_style;
		this.anti_theft = anti_theft;
		this.owning_type = owning_type;
		this.days_driven = days_driven;
		this.miles_driven = miles_driven;
		this.annual_driven = annual_driven;
		this.number_of_vehicle = number_of_vehicle;
	}



	public int getYear() {
		return year;
	}



	public void setYear(int year) {
		this.year = year;
	}



	public int getVin() {
		return vin;
	}



	public void setVin(int vin) {
		this.vin = vin;
	}



	public String getMake() {
		return make;
	}



	public void setMake(String make) {
		this.make = make;
	}



	public String getModel() {
		return model;
	}



	public void setModel(String model) {
		this.model = model;
	}



	public String getBody_style() {
		return body_style;
	}



	public void setBody_style(String body_style) {
		this.body_style = body_style;
	}



	public String getAnti_theft() {
		return anti_theft;
	}



	public void setAnti_theft(String anti_theft) {
		this.anti_theft = anti_theft;
	}



	public String getOwning_type() {
		return owning_type;
	}



	public void setOwning_type(String owning_type) {
		this.owning_type = owning_type;
	}



	public int getDays_driven() {
		return days_driven;
	}



	public void setDays_driven(int days_driven) {
		this.days_driven = days_driven;
	}



	public int getMiles_driven() {
		return miles_driven;
	}



	public void setMiles_driven(int miles_driven) {
		this.miles_driven = miles_driven;
	}



	public int getAnnual_driven() {
		return annual_driven;
	}



	public void setAnnual_driven(int annual_driven) {
		this.annual_driven = annual_driven;
	}



	public int getNumber_of_vehicle() {
		return number_of_vehicle;
	}



	public void setNumber_of_vehicle(int number_of_vehicle) {
		this.number_of_vehicle = number_of_vehicle;
	}



	@Override
	public String toString() {
		return "vehicle [year=" + year + ", vin=" + vin + ", make=" + make + ", model=" + model + ", body_style="
				+ body_style + ", anti_theft=" + anti_theft + ", owning_type=" + owning_type + ", days_driven="
				+ days_driven + ", miles_driven=" + miles_driven + ", annual_driven=" + annual_driven
				+ ", number_of_vehicle=" + number_of_vehicle + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
}
