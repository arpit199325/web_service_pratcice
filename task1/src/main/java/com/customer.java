package com;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class customer {
	
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
	
	public customer() {
		// TODO Auto-generated constructor stub
	}

	public customer(int customer_id, String name, String address, int ssn, String dob, int number_accident,
			String marital_status, String gender, int contact_no) {
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

	@Override
	public String toString() {
		return "customer [customer_id=" + customer_id + ", name=" + name + ", address=" + address + ", ssn=" + ssn
				+ ", dob=" + dob + ", number_accident=" + number_accident + ", marital_status=" + marital_status
				+ ", gender=" + gender + ", contact_no=" + contact_no + "]";
	}



}
