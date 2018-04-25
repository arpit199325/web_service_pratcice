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

public class coverage {
	
	@Id
	@GeneratedValue
	private int coverage_id;
	
	@Column(nullable=false)
	private String liability_coverage;
	@Column
	private String comprehensive_colision_coverage;
	@Column
	private String rental_coverage;
	@Column 
	private String unisured_underinsured_coverage;
	@Column
	private String medical_PIP_coverage;
	
	@Column
	private int customer_id;
	
//	@OneToOne(cascade=CascadeType.ALL)
//	@JoinColumn(name="customer_id")
//	private customer customer;
	
	public coverage() {
		// TODO Auto-generated constructor stub
	}

public coverage(int coverage_id, String liability_coverage, String comprehensive_colision_coverage,
		String rental_coverage, String unisured_underinsured_coverage, String medical_PIP_coverage, int customer_id) {
	super();
	this.coverage_id = coverage_id;
	this.liability_coverage = liability_coverage;
	this.comprehensive_colision_coverage = comprehensive_colision_coverage;
	this.rental_coverage = rental_coverage;
	this.unisured_underinsured_coverage = unisured_underinsured_coverage;
	this.medical_PIP_coverage = medical_PIP_coverage;
	this.customer_id = customer_id;
}

public int getCoverage_id() {
	return coverage_id;
}

public void setCoverage_id(int coverage_id) {
	this.coverage_id = coverage_id;
}

public String getLiability_coverage() {
	return liability_coverage;
}

public void setLiability_coverage(String liability_coverage) {
	this.liability_coverage = liability_coverage;
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

public int getCustomer_id() {
	return customer_id;
}

public void setCustomer_id(int customer_id) {
	this.customer_id = customer_id;
}

@Override
public String toString() {
	return "coverage [coverage_id=" + coverage_id + ", liability_coverage=" + liability_coverage
			+ ", comprehensive_colision_coverage=" + comprehensive_colision_coverage + ", rental_coverage="
			+ rental_coverage + ", unisured_underinsured_coverage=" + unisured_underinsured_coverage
			+ ", medical_PIP_coverage=" + medical_PIP_coverage + ", customer_id=" + customer_id + "]";
}

	
	
	

	
}
