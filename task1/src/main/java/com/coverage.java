package com;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity

public class coverage {
	
	@Id
	@GeneratedValue
	private int coverage_id;
	
	@Column
	private String comprehensive_colision_coverage;
	@Column
	private String rental_coverage;
	@Column 
	private String unisured_underinsured_coverage;
	@Column
	private String medical_PIP_coverage;
	
	
	
	
	public coverage() {
		// TODO Auto-generated constructor stub
	}




	public coverage(int coverage_id, String comprehensive_colision_coverage, String rental_coverage,
			String unisured_underinsured_coverage, String medical_PIP_coverage) {
		super();
		this.coverage_id = coverage_id;
		this.comprehensive_colision_coverage = comprehensive_colision_coverage;
		this.rental_coverage = rental_coverage;
		this.unisured_underinsured_coverage = unisured_underinsured_coverage;
		this.medical_PIP_coverage = medical_PIP_coverage;
	}




	public int getCoverage_id() {
		return coverage_id;
	}




	public void setCoverage_id(int coverage_id) {
		this.coverage_id = coverage_id;
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

	
}
