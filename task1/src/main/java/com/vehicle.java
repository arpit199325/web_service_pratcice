package com;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity

public class vehicle {
	@Id
	@GeneratedValue
	private int vehicle_id;
	
	@Column
	private int year;
	@Column
	private String vin;
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
	private String vehicle_usage;
	
	public vehicle() {
		// TODO Auto-generated constructor stub
	}

	public vehicle(int vehicle_id, int year, String vin, String make, String model, String body_style,
			String anti_theft, String owning_type, String vehicle_usage) {
		super();
		this.vehicle_id = vehicle_id;
		this.year = year;
		this.vin = vin;
		this.make = make;
		this.model = model;
		this.body_style = body_style;
		this.anti_theft = anti_theft;
		this.owning_type = owning_type;
		this.vehicle_usage = vehicle_usage;
	}

	public int getVehicle_id() {
		return vehicle_id;
	}

	public void setVehicle_id(int vehicle_id) {
		this.vehicle_id = vehicle_id;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public String getVin() {
		return vin;
	}

	public void setVin(String vin) {
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

	public String getVehicle_usage() {
		return vehicle_usage;
	}

	public void setVehicle_usage(String vehicle_usage) {
		this.vehicle_usage = vehicle_usage;
	}

	@Override
	public String toString() {
		return "vehicle [vehicle_id=" + vehicle_id + ", year=" + year + ", vin=" + vin + ", make=" + make + ", model="
				+ model + ", body_style=" + body_style + ", anti_theft=" + anti_theft + ", owning_type=" + owning_type
				+ ", vehicle_usage=" + vehicle_usage + "]";
	}

	
	
	
}
