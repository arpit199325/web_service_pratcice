package com;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity

public class vehicle {
	@Id
	@GeneratedValue
	private int vehicle_id;
	
	@Column(nullable=false)
	private int year;
	@Column
	private Double year_discount;
	@Column(nullable=false)
	private String vin;
	@Column(nullable=false)
	private String make;
	@Column(nullable=false)
	private String model;
	@Column
	private String body_style;
	@Column(nullable=false)
	private String anti_theft;
	@Column
	private Double anti_theft_discount;
	@Column(nullable=false)
	private String owning_type;
	@Column(nullable=false)
	private String vehicle_usage;
//	@OneToOne(cascade=CascadeType.ALL)
//	@JoinColumn(name="customer_id")
//	private customer customer;
	
	@Column
	private int customer_id;
	
	public vehicle() {
		// TODO Auto-generated constructor stub
	}

	public vehicle(int vehicle_id, int year, Double year_discount, String vin, String make, String model,
			String body_style, String anti_theft, Double anti_theft_discount, String owning_type, String vehicle_usage,
			int customer_id) {
		super();
		this.vehicle_id = vehicle_id;
		this.year = year;
		this.year_discount = year_discount;
		this.vin = vin;
		this.make = make;
		this.model = model;
		this.body_style = body_style;
		this.anti_theft = anti_theft;
		this.anti_theft_discount = anti_theft_discount;
		this.owning_type = owning_type;
		this.vehicle_usage = vehicle_usage;
		this.customer_id = customer_id;
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

	public Double getYear_discount() {
		return year_discount;
	}

	public void setYear_discount(Double year_discount) {
		this.year_discount = year_discount;
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

	public Double getAnti_theft_discount() {
		return anti_theft_discount;
	}

	public void setAnti_theft_discount(Double anti_theft_discount) {
		this.anti_theft_discount = anti_theft_discount;
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

	public int getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}

	@Override
	public String toString() {
		return "vehicle [vehicle_id=" + vehicle_id + ", year=" + year + ", year_discount=" + year_discount + ", vin="
				+ vin + ", make=" + make + ", model=" + model + ", body_style=" + body_style + ", anti_theft="
				+ anti_theft + ", anti_theft_discount=" + anti_theft_discount + ", owning_type=" + owning_type
				+ ", vehicle_usage=" + vehicle_usage + ", customer_id=" + customer_id + "]";
	}

	
	
	
}
