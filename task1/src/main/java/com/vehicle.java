package com;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.SecondaryTable;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
@Table(name="vehicle_info")
@SecondaryTable(name="more_vehicle_info")
public class vehicle {
	@Id
	@GeneratedValue
	private int vehicle_id;
	
	@Column
	private int year;
	@Column
	private Double year_discount;
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
	private Double anti_theft_discount;
	@Column
	private String owning_type;
	@Column
	private String vehicle_usage;
//	@OneToOne(cascade=CascadeType.ALL)
//	@JoinColumn(name="customer_id")
//	private customer customer;
	@Column
	private int customer_id;
	
	@Column(table="more_vehicle_info")
	private int vehicle_2_year;
	@Column(table="more_vehicle_info")
	private Double vehicle_2_year_discount;
	@Column(table="more_vehicle_info")
	private String vehicle_2_vin;
	@Column(table="more_vehicle_info")
	private String vehicle_2_make;
	@Column(table="more_vehicle_info")
	private String vehicle_2_model;
	@Column(table="more_vehicle_info")
	private String vehicle_2_body_style;
	@Column(table="more_vehicle_info")
	private String vehicle_2_anti_theft;
	@Column(table="more_vehicle_info")
	private Double vehicle_2_anti_theft_discount;
	@Column(table="more_vehicle_info")
	private String vehicle_2_owning_type;
	@Column(table="more_vehicle_info")
	private String vehicle_2_vehicle_usage;
	
	@Column(table="more_vehicle_info")
	private int vehicle_3_year;
	@Column(table="more_vehicle_info")
	private Double vehicle_3_year_discount;
	@Column(table="more_vehicle_info")
	private String vehicle_3_vin;
	@Column(table="more_vehicle_info")
	private String vehicle_3_make;
	@Column(table="more_vehicle_info")
	private String vehicle_3_model;
	@Column(table="more_vehicle_info")
	private String vehicle_3_body_style;
	@Column(table="more_vehicle_info")
	private String vehicle_3_anti_theft;
	@Column(table="more_vehicle_info")
	private Double vehicle_3_anti_theft_discount;
	@Column(table="more_vehicle_info")
	private String vehicle_3_owning_type;
	@Column(table="more_vehicle_info")
	private String vehicle_3_vehicle_usage;
	
	public vehicle() {
		// TODO Auto-generated constructor stub
	}

	public vehicle(int vehicle_id, int year, Double year_discount, String vin, String make, String model,
			String body_style, String anti_theft, Double anti_theft_discount, String owning_type, String vehicle_usage,
			int customer_id, int vehicle_2_year, Double vehicle_2_year_discount, String vehicle_2_vin,
			String vehicle_2_make, String vehicle_2_model, String vehicle_2_body_style, String vehicle_2_anti_theft,
			Double vehicle_2_anti_theft_discount, String vehicle_2_owning_type, String vehicle_2_vehicle_usage,
			int vehicle_3_year, Double vehicle_3_year_discount, String vehicle_3_vin, String vehicle_3_make,
			String vehicle_3_model, String vehicle_3_body_style, String vehicle_3_anti_theft,
			Double vehicle_3_anti_theft_discount, String vehicle_3_owning_type, String vehicle_3_vehicle_usage) {
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
		this.vehicle_2_year = vehicle_2_year;
		this.vehicle_2_year_discount = vehicle_2_year_discount;
		this.vehicle_2_vin = vehicle_2_vin;
		this.vehicle_2_make = vehicle_2_make;
		this.vehicle_2_model = vehicle_2_model;
		this.vehicle_2_body_style = vehicle_2_body_style;
		this.vehicle_2_anti_theft = vehicle_2_anti_theft;
		this.vehicle_2_anti_theft_discount = vehicle_2_anti_theft_discount;
		this.vehicle_2_owning_type = vehicle_2_owning_type;
		this.vehicle_2_vehicle_usage = vehicle_2_vehicle_usage;
		this.vehicle_3_year = vehicle_3_year;
		this.vehicle_3_year_discount = vehicle_3_year_discount;
		this.vehicle_3_vin = vehicle_3_vin;
		this.vehicle_3_make = vehicle_3_make;
		this.vehicle_3_model = vehicle_3_model;
		this.vehicle_3_body_style = vehicle_3_body_style;
		this.vehicle_3_anti_theft = vehicle_3_anti_theft;
		this.vehicle_3_anti_theft_discount = vehicle_3_anti_theft_discount;
		this.vehicle_3_owning_type = vehicle_3_owning_type;
		this.vehicle_3_vehicle_usage = vehicle_3_vehicle_usage;
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

	public int getVehicle_2_year() {
		return vehicle_2_year;
	}

	public void setVehicle_2_year(int vehicle_2_year) {
		this.vehicle_2_year = vehicle_2_year;
	}

	public Double getVehicle_2_year_discount() {
		return vehicle_2_year_discount;
	}

	public void setVehicle_2_year_discount(Double vehicle_2_year_discount) {
		this.vehicle_2_year_discount = vehicle_2_year_discount;
	}

	public String getVehicle_2_vin() {
		return vehicle_2_vin;
	}

	public void setVehicle_2_vin(String vehicle_2_vin) {
		this.vehicle_2_vin = vehicle_2_vin;
	}

	public String getVehicle_2_make() {
		return vehicle_2_make;
	}

	public void setVehicle_2_make(String vehicle_2_make) {
		this.vehicle_2_make = vehicle_2_make;
	}

	public String getVehicle_2_model() {
		return vehicle_2_model;
	}

	public void setVehicle_2_model(String vehicle_2_model) {
		this.vehicle_2_model = vehicle_2_model;
	}

	public String getVehicle_2_body_style() {
		return vehicle_2_body_style;
	}

	public void setVehicle_2_body_style(String vehicle_2_body_style) {
		this.vehicle_2_body_style = vehicle_2_body_style;
	}

	public String getVehicle_2_anti_theft() {
		return vehicle_2_anti_theft;
	}

	public void setVehicle_2_anti_theft(String vehicle_2_anti_theft) {
		this.vehicle_2_anti_theft = vehicle_2_anti_theft;
	}

	public Double getVehicle_2_anti_theft_discount() {
		return vehicle_2_anti_theft_discount;
	}

	public void setVehicle_2_anti_theft_discount(Double vehicle_2_anti_theft_discount) {
		this.vehicle_2_anti_theft_discount = vehicle_2_anti_theft_discount;
	}

	public String getVehicle_2_owning_type() {
		return vehicle_2_owning_type;
	}

	public void setVehicle_2_owning_type(String vehicle_2_owning_type) {
		this.vehicle_2_owning_type = vehicle_2_owning_type;
	}

	public String getVehicle_2_vehicle_usage() {
		return vehicle_2_vehicle_usage;
	}

	public void setVehicle_2_vehicle_usage(String vehicle_2_vehicle_usage) {
		this.vehicle_2_vehicle_usage = vehicle_2_vehicle_usage;
	}

	public int getVehicle_3_year() {
		return vehicle_3_year;
	}

	public void setVehicle_3_year(int vehicle_3_year) {
		this.vehicle_3_year = vehicle_3_year;
	}

	public Double getVehicle_3_year_discount() {
		return vehicle_3_year_discount;
	}

	public void setVehicle_3_year_discount(Double vehicle_3_year_discount) {
		this.vehicle_3_year_discount = vehicle_3_year_discount;
	}

	public String getVehicle_3_vin() {
		return vehicle_3_vin;
	}

	public void setVehicle_3_vin(String vehicle_3_vin) {
		this.vehicle_3_vin = vehicle_3_vin;
	}

	public String getVehicle_3_make() {
		return vehicle_3_make;
	}

	public void setVehicle_3_make(String vehicle_3_make) {
		this.vehicle_3_make = vehicle_3_make;
	}

	public String getVehicle_3_model() {
		return vehicle_3_model;
	}

	public void setVehicle_3_model(String vehicle_3_model) {
		this.vehicle_3_model = vehicle_3_model;
	}

	public String getVehicle_3_body_style() {
		return vehicle_3_body_style;
	}

	public void setVehicle_3_body_style(String vehicle_3_body_style) {
		this.vehicle_3_body_style = vehicle_3_body_style;
	}

	public String getVehicle_3_anti_theft() {
		return vehicle_3_anti_theft;
	}

	public void setVehicle_3_anti_theft(String vehicle_3_anti_theft) {
		this.vehicle_3_anti_theft = vehicle_3_anti_theft;
	}

	public Double getVehicle_3_anti_theft_discount() {
		return vehicle_3_anti_theft_discount;
	}

	public void setVehicle_3_anti_theft_discount(Double vehicle_3_anti_theft_discount) {
		this.vehicle_3_anti_theft_discount = vehicle_3_anti_theft_discount;
	}

	public String getVehicle_3_owning_type() {
		return vehicle_3_owning_type;
	}

	public void setVehicle_3_owning_type(String vehicle_3_owning_type) {
		this.vehicle_3_owning_type = vehicle_3_owning_type;
	}

	public String getVehicle_3_vehicle_usage() {
		return vehicle_3_vehicle_usage;
	}

	public void setVehicle_3_vehicle_usage(String vehicle_3_vehicle_usage) {
		this.vehicle_3_vehicle_usage = vehicle_3_vehicle_usage;
	}

	@Override
	public String toString() {
		return "vehicle [vehicle_id=" + vehicle_id + ", year=" + year + ", year_discount=" + year_discount + ", vin="
				+ vin + ", make=" + make + ", model=" + model + ", body_style=" + body_style + ", anti_theft="
				+ anti_theft + ", anti_theft_discount=" + anti_theft_discount + ", owning_type=" + owning_type
				+ ", vehicle_usage=" + vehicle_usage + ", customer_id=" + customer_id + ", vehicle_2_year="
				+ vehicle_2_year + ", vehicle_2_year_discount=" + vehicle_2_year_discount + ", vehicle_2_vin="
				+ vehicle_2_vin + ", vehicle_2_make=" + vehicle_2_make + ", vehicle_2_model=" + vehicle_2_model
				+ ", vehicle_2_body_style=" + vehicle_2_body_style + ", vehicle_2_anti_theft=" + vehicle_2_anti_theft
				+ ", vehicle_2_anti_theft_discount=" + vehicle_2_anti_theft_discount + ", vehicle_2_owning_type="
				+ vehicle_2_owning_type + ", vehicle_2_vehicle_usage=" + vehicle_2_vehicle_usage + ", vehicle_3_year="
				+ vehicle_3_year + ", vehicle_3_year_discount=" + vehicle_3_year_discount + ", vehicle_3_vin="
				+ vehicle_3_vin + ", vehicle_3_make=" + vehicle_3_make + ", vehicle_3_model=" + vehicle_3_model
				+ ", vehicle_3_body_style=" + vehicle_3_body_style + ", vehicle_3_anti_theft=" + vehicle_3_anti_theft
				+ ", vehicle_3_anti_theft_discount=" + vehicle_3_anti_theft_discount + ", vehicle_3_owning_type="
				+ vehicle_3_owning_type + ", vehicle_3_vehicle_usage=" + vehicle_3_vehicle_usage + "]";
	}

	
	
	
	
	
	
}
