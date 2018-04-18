package com;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


@Entity(name="Task1_Data")
public class task1_model {
	
	
	@Id
	@GeneratedValue
	private int customer_id;
	@Column
	private String name;
	@Column
	private String address;
	@Column
	private int ssn;
	@Column
	private String dob;
	@Column
	private int number_accident;
	@Column
	private String marital_status;
	@Column
	private String gender;
	@Column
	private int contact_no;
	@Column
	private int year;
	@Column
	private long vin;
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
	@Column
	private long mileage;
	@Column
	private String more_vehicle;
	@Column
	private String comprehensive_colision_coverage;
	@Column
	private String rental_coverage;
	@Column 
	private String unisured_underinsured_coverage;
	@Column
	private String medical_PIP_coverage;
	
	
	
	public task1_model() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	public task1_model(int customer_id, String name, String address, int ssn, String dob, int number_accident,
			String marital_status, String gender, int contact_no, int year, long vin, String make, String model,
			String body_style, String anti_theft, String owning_type, String vehicle_usage, long mileage,
			String more_vehicle, String comprehensive_colision_coverage, String rental_coverage,
			String unisured_underinsured_coverage, String medical_PIP_coverage) {
		super();
		this.customer_id = customer_id;
		this.name = name;
		this.address = address;
		this.ssn = ssn;
		this.dob = dob;
		this.number_accident = number_accident;
		this.marital_status = marital_status;
		this.gender = gender;
		this.contact_no = contact_no;
		this.year = year;
		this.vin = vin;
		this.make = make;
		this.model = model;
		this.body_style = body_style;
		this.anti_theft = anti_theft;
		this.owning_type = owning_type;
		this.vehicle_usage = vehicle_usage;
		this.mileage = mileage;
		this.more_vehicle = more_vehicle;
		this.comprehensive_colision_coverage = comprehensive_colision_coverage;
		this.rental_coverage = rental_coverage;
		this.unisured_underinsured_coverage = unisured_underinsured_coverage;
		this.medical_PIP_coverage = medical_PIP_coverage;
	}
	public int getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getSsn() {
		return ssn;
	}
	public void setSsn(int ssn) {
		this.ssn = ssn;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public int getNumber_accident() {
		return number_accident;
	}
	public void setNumber_accident(int number_accident) {
		this.number_accident = number_accident;
	}
	public String getMarital_status() {
		return marital_status;
	}
	public void setMarital_status(String marital_status) {
		this.marital_status = marital_status;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getContact_no() {
		return contact_no;
	}
	public void setContact_no(int contact_no) {
		this.contact_no = contact_no;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public long getVin() {
		return vin;
	}
	public void setVin(long vin) {
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
	public long getMileage() {
		return mileage;
	}
	public void setMileage(long mileage) {
		this.mileage = mileage;
	}
	public String getMore_vehicle() {
		return more_vehicle;
	}
	public void setMore_vehicle(String more_vehicle) {
		this.more_vehicle = more_vehicle;
	}
	public String getComprehensive_colision_coverage() {
		return comprehensive_colision_coverage;
	}
	public void setComprehensive_colision_coverage(String comprehensive_colision_coverage) {
		this.comprehensive_colision_coverage = comprehensive_colision_coverage;
	}
	public String getRental_coverage() {
		return rental_coverage;
	}
	public void setRental_coverage(String rental_coverage) {
		this.rental_coverage = rental_coverage;
	}
	public String getUnisured_underinsured_coverage() {
		return unisured_underinsured_coverage;
	}
	public void setUnisured_underinsured_coverage(String unisured_underinsured_coverage) {
		this.unisured_underinsured_coverage = unisured_underinsured_coverage;
	}
	public String getMedical_PIP_coverage() {
		return medical_PIP_coverage;
	}
	public void setMedical_PIP_coverage(String medical_PIP_coverage) {
		this.medical_PIP_coverage = medical_PIP_coverage;
	}
	
	
	@Override
	public String toString() {
		return "task1_model [customer_id=" + customer_id + ", name=" + name + ", address=" + address + ", ssn=" + ssn
				+ ", dob=" + dob + ", number_accident=" + number_accident + ", marital_status=" + marital_status
				+ ", gender=" + gender + ", contact_no=" + contact_no + ", year=" + year + ", vin=" + vin + ", make="
				+ make + ", model=" + model + ", body_style=" + body_style + ", anti_theft=" + anti_theft
				+ ", owning_type=" + owning_type + ", vehicle_usage=" + vehicle_usage + ", mileage=" + mileage
				+ ", more_vehicle=" + more_vehicle + ", comprehensive_colision_coverage="
				+ comprehensive_colision_coverage + ", rental_coverage=" + rental_coverage
				+ ", unisured_underinsured_coverage=" + unisured_underinsured_coverage + ", medical_PIP_coverage="
				+ medical_PIP_coverage + "]";
	}
	
	


}
