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

	
	@Column
	private String liability_a_premium;
	@Column
	private String liability_b_premium;
	@Column
	private String liability_c_premium;
	@Column
	private String liability_d_premium;
	@Column
	private String liability_e_premium;
	@Column
	private String liability_f_premium;
	@Column
	private String comprehensive_colision_a_premium;
	@Column
	private String comprehensive_colision_b_premium;
	@Column
	private String comprehensive_colision_c_premium;
	@Column
	private String comprehensive_colision_d_premium;
	@Column
	private String comprehensive_colision_e_premium;
	@Column
	private String comprehensive_colision_f_premium;
	@Column
	private String rental_a_premium;
	@Column
	private String rental_b_premium;
	@Column
	private String rental_c_premium;
	@Column
	private String rental_d_premium;
	@Column
	private String rental_e_premium;
	@Column
	private String rental_f_premium;
	@Column 
	private String unisured_underinsured_a_premium;
	@Column 
	private String unisured_underinsured_b_premium;
	@Column 
	private String unisured_underinsured_c_premium;
	@Column 
	private String unisured_underinsured_d_premium;
	@Column 
	private String unisured_underinsured_e_premium;
	@Column 
	private String unisured_underinsured_f_premium;
	@Column
	private String medical_PIP_a_premium;
	@Column
	private String medical_PIP_b_premium;
	@Column
	private String medical_PIP_c_premium;
	@Column
	private String medical_PIP_d_premium;
	@Column
	private String medical_PIP_e_premium;
	@Column
	private String medical_PIP_f_premium;
	
	@Column
	private String liability_a_deductible;
	@Column
	private String liability_b_deductible;
	@Column
	private String liability_c_deductible;
	@Column
	private String liability_d_deductible;
	@Column
	private String liability_e_deductible;
	@Column
	private String liability_f_deductible;
	@Column
	private String comprehensive_colision_a_deductible;
	@Column
	private String comprehensive_colision_b_deductible;
	@Column
	private String comprehensive_colision_c_deductible;
	@Column
	private String comprehensive_colision_d_deductible;
	@Column
	private String comprehensive_colision_e_deductible;
	@Column
	private String comprehensive_colision_f_deductible;
	@Column
	private String rental_a_deductible;
	@Column
	private String rental_b_deductible;
	@Column
	private String rental_c_deductible;
	@Column
	private String rental_d_deductible;
	@Column
	private String rental_e_deductible;
	@Column
	private String rental_f_deductible;
	@Column
	private String unisured_underinsuredb_a_deductible;
	@Column
	private String unisured_underinsuredb_b_deductible;
	@Column
	private String unisured_underinsuredb_c_deductible;
	@Column
	private String unisured_underinsuredb_d_deductible;
	@Column
	private String unisured_underinsuredb_e_deductible;
	@Column
	private String unisured_underinsuredb_f_deductible;
	@Column
	private String medical_PIP_a_deductible;
	@Column
	private String medical_PIP_b_deductible;
	@Column
	private String medical_PIP_c_deductible;
	@Column
	private String medical_PIP_d_deductible;
	@Column
	private String medical_PIP_e_deductible;
	@Column
	private String medical_PIP_f_deductible;
	
	@Column
	private String total_limit;
	@Column
	private String total_deductible;
	@Column
	private String total_premium;
	
//	@OneToOne(cascade=CascadeType.ALL)
//	@JoinColumn(name="customer_id")
//	private customer customer;
	
	public coverage() {
		// TODO Auto-generated constructor stub
	}

public coverage(int coverage_id, String liability_coverage, String comprehensive_colision_coverage,
		String rental_coverage, String unisured_underinsured_coverage, String medical_PIP_coverage, int customer_id,
		String liability_a_premium, String liability_b_premium, String liability_c_premium, String liability_d_premium,
		String liability_e_premium, String liability_f_premium, String comprehensive_colision_a_premium,
		String comprehensive_colision_b_premium, String comprehensive_colision_c_premium,
		String comprehensive_colision_d_premium, String comprehensive_colision_e_premium,
		String comprehensive_colision_f_premium, String rental_a_premium, String rental_b_premium,
		String rental_c_premium, String rental_d_premium, String rental_e_premium, String rental_f_premium,
		String unisured_underinsured_a_premium, String unisured_underinsured_b_premium,
		String unisured_underinsured_c_premium, String unisured_underinsured_d_premium,
		String unisured_underinsured_e_premium, String unisured_underinsured_f_premium, String medical_PIP_a_premium,
		String medical_PIP_b_premium, String medical_PIP_c_premium, String medical_PIP_d_premium,
		String medical_PIP_e_premium, String medical_PIP_f_premium, String liability_a_deductible,
		String liability_b_deductible, String liability_c_deductible, String liability_d_deductible,
		String liability_e_deductible, String liability_f_deductible, String comprehensive_colision_a_deductible,
		String comprehensive_colision_b_deductible, String comprehensive_colision_c_deductible,
		String comprehensive_colision_d_deductible, String comprehensive_colision_e_deductible,
		String comprehensive_colision_f_deductible, String rental_a_deductible, String rental_b_deductible,
		String rental_c_deductible, String rental_d_deductible, String rental_e_deductible, String rental_f_deductible,
		String unisured_underinsuredb_a_deductible, String unisured_underinsuredb_b_deductible,
		String unisured_underinsuredb_c_deductible, String unisured_underinsuredb_d_deductible,
		String unisured_underinsuredb_e_deductible, String unisured_underinsuredb_f_deductible,
		String medical_PIP_a_deductible, String medical_PIP_b_deductible, String medical_PIP_c_deductible,
		String medical_PIP_d_deductible, String medical_PIP_e_deductible, String medical_PIP_f_deductible,
		String total_limit, String total_deductible, String total_premium) {
	super();
	this.coverage_id = coverage_id;
	this.liability_coverage = liability_coverage;
	this.comprehensive_colision_coverage = comprehensive_colision_coverage;
	this.rental_coverage = rental_coverage;
	this.unisured_underinsured_coverage = unisured_underinsured_coverage;
	this.medical_PIP_coverage = medical_PIP_coverage;
	this.customer_id = customer_id;
	this.liability_a_premium = liability_a_premium;
	this.liability_b_premium = liability_b_premium;
	this.liability_c_premium = liability_c_premium;
	this.liability_d_premium = liability_d_premium;
	this.liability_e_premium = liability_e_premium;
	this.liability_f_premium = liability_f_premium;
	this.comprehensive_colision_a_premium = comprehensive_colision_a_premium;
	this.comprehensive_colision_b_premium = comprehensive_colision_b_premium;
	this.comprehensive_colision_c_premium = comprehensive_colision_c_premium;
	this.comprehensive_colision_d_premium = comprehensive_colision_d_premium;
	this.comprehensive_colision_e_premium = comprehensive_colision_e_premium;
	this.comprehensive_colision_f_premium = comprehensive_colision_f_premium;
	this.rental_a_premium = rental_a_premium;
	this.rental_b_premium = rental_b_premium;
	this.rental_c_premium = rental_c_premium;
	this.rental_d_premium = rental_d_premium;
	this.rental_e_premium = rental_e_premium;
	this.rental_f_premium = rental_f_premium;
	this.unisured_underinsured_a_premium = unisured_underinsured_a_premium;
	this.unisured_underinsured_b_premium = unisured_underinsured_b_premium;
	this.unisured_underinsured_c_premium = unisured_underinsured_c_premium;
	this.unisured_underinsured_d_premium = unisured_underinsured_d_premium;
	this.unisured_underinsured_e_premium = unisured_underinsured_e_premium;
	this.unisured_underinsured_f_premium = unisured_underinsured_f_premium;
	this.medical_PIP_a_premium = medical_PIP_a_premium;
	this.medical_PIP_b_premium = medical_PIP_b_premium;
	this.medical_PIP_c_premium = medical_PIP_c_premium;
	this.medical_PIP_d_premium = medical_PIP_d_premium;
	this.medical_PIP_e_premium = medical_PIP_e_premium;
	this.medical_PIP_f_premium = medical_PIP_f_premium;
	this.liability_a_deductible = liability_a_deductible;
	this.liability_b_deductible = liability_b_deductible;
	this.liability_c_deductible = liability_c_deductible;
	this.liability_d_deductible = liability_d_deductible;
	this.liability_e_deductible = liability_e_deductible;
	this.liability_f_deductible = liability_f_deductible;
	this.comprehensive_colision_a_deductible = comprehensive_colision_a_deductible;
	this.comprehensive_colision_b_deductible = comprehensive_colision_b_deductible;
	this.comprehensive_colision_c_deductible = comprehensive_colision_c_deductible;
	this.comprehensive_colision_d_deductible = comprehensive_colision_d_deductible;
	this.comprehensive_colision_e_deductible = comprehensive_colision_e_deductible;
	this.comprehensive_colision_f_deductible = comprehensive_colision_f_deductible;
	this.rental_a_deductible = rental_a_deductible;
	this.rental_b_deductible = rental_b_deductible;
	this.rental_c_deductible = rental_c_deductible;
	this.rental_d_deductible = rental_d_deductible;
	this.rental_e_deductible = rental_e_deductible;
	this.rental_f_deductible = rental_f_deductible;
	this.unisured_underinsuredb_a_deductible = unisured_underinsuredb_a_deductible;
	this.unisured_underinsuredb_b_deductible = unisured_underinsuredb_b_deductible;
	this.unisured_underinsuredb_c_deductible = unisured_underinsuredb_c_deductible;
	this.unisured_underinsuredb_d_deductible = unisured_underinsuredb_d_deductible;
	this.unisured_underinsuredb_e_deductible = unisured_underinsuredb_e_deductible;
	this.unisured_underinsuredb_f_deductible = unisured_underinsuredb_f_deductible;
	this.medical_PIP_a_deductible = medical_PIP_a_deductible;
	this.medical_PIP_b_deductible = medical_PIP_b_deductible;
	this.medical_PIP_c_deductible = medical_PIP_c_deductible;
	this.medical_PIP_d_deductible = medical_PIP_d_deductible;
	this.medical_PIP_e_deductible = medical_PIP_e_deductible;
	this.medical_PIP_f_deductible = medical_PIP_f_deductible;
	this.total_limit = total_limit;
	this.total_deductible = total_deductible;
	this.total_premium = total_premium;
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

public String getLiability_a_premium() {
	return liability_a_premium;
}

public void setLiability_a_premium(String liability_a_premium) {
	this.liability_a_premium = liability_a_premium;
}

public String getLiability_b_premium() {
	return liability_b_premium;
}

public void setLiability_b_premium(String liability_b_premium) {
	this.liability_b_premium = liability_b_premium;
}

public String getLiability_c_premium() {
	return liability_c_premium;
}

public void setLiability_c_premium(String liability_c_premium) {
	this.liability_c_premium = liability_c_premium;
}

public String getLiability_d_premium() {
	return liability_d_premium;
}

public void setLiability_d_premium(String liability_d_premium) {
	this.liability_d_premium = liability_d_premium;
}

public String getLiability_e_premium() {
	return liability_e_premium;
}

public void setLiability_e_premium(String liability_e_premium) {
	this.liability_e_premium = liability_e_premium;
}

public String getLiability_f_premium() {
	return liability_f_premium;
}

public void setLiability_f_premium(String liability_f_premium) {
	this.liability_f_premium = liability_f_premium;
}

public String getComprehensive_colision_a_premium() {
	return comprehensive_colision_a_premium;
}

public void setComprehensive_colision_a_premium(String comprehensive_colision_a_premium) {
	this.comprehensive_colision_a_premium = comprehensive_colision_a_premium;
}

public String getComprehensive_colision_b_premium() {
	return comprehensive_colision_b_premium;
}

public void setComprehensive_colision_b_premium(String comprehensive_colision_b_premium) {
	this.comprehensive_colision_b_premium = comprehensive_colision_b_premium;
}

public String getComprehensive_colision_c_premium() {
	return comprehensive_colision_c_premium;
}

public void setComprehensive_colision_c_premium(String comprehensive_colision_c_premium) {
	this.comprehensive_colision_c_premium = comprehensive_colision_c_premium;
}

public String getComprehensive_colision_d_premium() {
	return comprehensive_colision_d_premium;
}

public void setComprehensive_colision_d_premium(String comprehensive_colision_d_premium) {
	this.comprehensive_colision_d_premium = comprehensive_colision_d_premium;
}

public String getComprehensive_colision_e_premium() {
	return comprehensive_colision_e_premium;
}

public void setComprehensive_colision_e_premium(String comprehensive_colision_e_premium) {
	this.comprehensive_colision_e_premium = comprehensive_colision_e_premium;
}

public String getComprehensive_colision_f_premium() {
	return comprehensive_colision_f_premium;
}

public void setComprehensive_colision_f_premium(String comprehensive_colision_f_premium) {
	this.comprehensive_colision_f_premium = comprehensive_colision_f_premium;
}

public String getRental_a_premium() {
	return rental_a_premium;
}

public void setRental_a_premium(String rental_a_premium) {
	this.rental_a_premium = rental_a_premium;
}

public String getRental_b_premium() {
	return rental_b_premium;
}

public void setRental_b_premium(String rental_b_premium) {
	this.rental_b_premium = rental_b_premium;
}

public String getRental_c_premium() {
	return rental_c_premium;
}

public void setRental_c_premium(String rental_c_premium) {
	this.rental_c_premium = rental_c_premium;
}

public String getRental_d_premium() {
	return rental_d_premium;
}

public void setRental_d_premium(String rental_d_premium) {
	this.rental_d_premium = rental_d_premium;
}

public String getRental_e_premium() {
	return rental_e_premium;
}

public void setRental_e_premium(String rental_e_premium) {
	this.rental_e_premium = rental_e_premium;
}

public String getRental_f_premium() {
	return rental_f_premium;
}

public void setRental_f_premium(String rental_f_premium) {
	this.rental_f_premium = rental_f_premium;
}

public String getUnisured_underinsured_a_premium() {
	return unisured_underinsured_a_premium;
}

public void setUnisured_underinsured_a_premium(String unisured_underinsured_a_premium) {
	this.unisured_underinsured_a_premium = unisured_underinsured_a_premium;
}

public String getUnisured_underinsured_b_premium() {
	return unisured_underinsured_b_premium;
}

public void setUnisured_underinsured_b_premium(String unisured_underinsured_b_premium) {
	this.unisured_underinsured_b_premium = unisured_underinsured_b_premium;
}

public String getUnisured_underinsured_c_premium() {
	return unisured_underinsured_c_premium;
}

public void setUnisured_underinsured_c_premium(String unisured_underinsured_c_premium) {
	this.unisured_underinsured_c_premium = unisured_underinsured_c_premium;
}

public String getUnisured_underinsured_d_premium() {
	return unisured_underinsured_d_premium;
}

public void setUnisured_underinsured_d_premium(String unisured_underinsured_d_premium) {
	this.unisured_underinsured_d_premium = unisured_underinsured_d_premium;
}

public String getUnisured_underinsured_e_premium() {
	return unisured_underinsured_e_premium;
}

public void setUnisured_underinsured_e_premium(String unisured_underinsured_e_premium) {
	this.unisured_underinsured_e_premium = unisured_underinsured_e_premium;
}

public String getUnisured_underinsured_f_premium() {
	return unisured_underinsured_f_premium;
}

public void setUnisured_underinsured_f_premium(String unisured_underinsured_f_premium) {
	this.unisured_underinsured_f_premium = unisured_underinsured_f_premium;
}

public String getMedical_PIP_a_premium() {
	return medical_PIP_a_premium;
}

public void setMedical_PIP_a_premium(String medical_PIP_a_premium) {
	this.medical_PIP_a_premium = medical_PIP_a_premium;
}

public String getMedical_PIP_b_premium() {
	return medical_PIP_b_premium;
}

public void setMedical_PIP_b_premium(String medical_PIP_b_premium) {
	this.medical_PIP_b_premium = medical_PIP_b_premium;
}

public String getMedical_PIP_c_premium() {
	return medical_PIP_c_premium;
}

public void setMedical_PIP_c_premium(String medical_PIP_c_premium) {
	this.medical_PIP_c_premium = medical_PIP_c_premium;
}

public String getMedical_PIP_d_premium() {
	return medical_PIP_d_premium;
}

public void setMedical_PIP_d_premium(String medical_PIP_d_premium) {
	this.medical_PIP_d_premium = medical_PIP_d_premium;
}

public String getMedical_PIP_e_premium() {
	return medical_PIP_e_premium;
}

public void setMedical_PIP_e_premium(String medical_PIP_e_premium) {
	this.medical_PIP_e_premium = medical_PIP_e_premium;
}

public String getMedical_PIP_f_premium() {
	return medical_PIP_f_premium;
}

public void setMedical_PIP_f_premium(String medical_PIP_f_premium) {
	this.medical_PIP_f_premium = medical_PIP_f_premium;
}

public String getLiability_a_deductible() {
	return liability_a_deductible;
}

public void setLiability_a_deductible(String liability_a_deductible) {
	this.liability_a_deductible = liability_a_deductible;
}

public String getLiability_b_deductible() {
	return liability_b_deductible;
}

public void setLiability_b_deductible(String liability_b_deductible) {
	this.liability_b_deductible = liability_b_deductible;
}

public String getLiability_c_deductible() {
	return liability_c_deductible;
}

public void setLiability_c_deductible(String liability_c_deductible) {
	this.liability_c_deductible = liability_c_deductible;
}

public String getLiability_d_deductible() {
	return liability_d_deductible;
}

public void setLiability_d_deductible(String liability_d_deductible) {
	this.liability_d_deductible = liability_d_deductible;
}

public String getLiability_e_deductible() {
	return liability_e_deductible;
}

public void setLiability_e_deductible(String liability_e_deductible) {
	this.liability_e_deductible = liability_e_deductible;
}

public String getLiability_f_deductible() {
	return liability_f_deductible;
}

public void setLiability_f_deductible(String liability_f_deductible) {
	this.liability_f_deductible = liability_f_deductible;
}

public String getComprehensive_colision_a_deductible() {
	return comprehensive_colision_a_deductible;
}

public void setComprehensive_colision_a_deductible(String comprehensive_colision_a_deductible) {
	this.comprehensive_colision_a_deductible = comprehensive_colision_a_deductible;
}

public String getComprehensive_colision_b_deductible() {
	return comprehensive_colision_b_deductible;
}

public void setComprehensive_colision_b_deductible(String comprehensive_colision_b_deductible) {
	this.comprehensive_colision_b_deductible = comprehensive_colision_b_deductible;
}

public String getComprehensive_colision_c_deductible() {
	return comprehensive_colision_c_deductible;
}

public void setComprehensive_colision_c_deductible(String comprehensive_colision_c_deductible) {
	this.comprehensive_colision_c_deductible = comprehensive_colision_c_deductible;
}

public String getComprehensive_colision_d_deductible() {
	return comprehensive_colision_d_deductible;
}

public void setComprehensive_colision_d_deductible(String comprehensive_colision_d_deductible) {
	this.comprehensive_colision_d_deductible = comprehensive_colision_d_deductible;
}

public String getComprehensive_colision_e_deductible() {
	return comprehensive_colision_e_deductible;
}

public void setComprehensive_colision_e_deductible(String comprehensive_colision_e_deductible) {
	this.comprehensive_colision_e_deductible = comprehensive_colision_e_deductible;
}

public String getComprehensive_colision_f_deductible() {
	return comprehensive_colision_f_deductible;
}

public void setComprehensive_colision_f_deductible(String comprehensive_colision_f_deductible) {
	this.comprehensive_colision_f_deductible = comprehensive_colision_f_deductible;
}

public String getRental_a_deductible() {
	return rental_a_deductible;
}

public void setRental_a_deductible(String rental_a_deductible) {
	this.rental_a_deductible = rental_a_deductible;
}

public String getRental_b_deductible() {
	return rental_b_deductible;
}

public void setRental_b_deductible(String rental_b_deductible) {
	this.rental_b_deductible = rental_b_deductible;
}

public String getRental_c_deductible() {
	return rental_c_deductible;
}

public void setRental_c_deductible(String rental_c_deductible) {
	this.rental_c_deductible = rental_c_deductible;
}

public String getRental_d_deductible() {
	return rental_d_deductible;
}

public void setRental_d_deductible(String rental_d_deductible) {
	this.rental_d_deductible = rental_d_deductible;
}

public String getRental_e_deductible() {
	return rental_e_deductible;
}

public void setRental_e_deductible(String rental_e_deductible) {
	this.rental_e_deductible = rental_e_deductible;
}

public String getRental_f_deductible() {
	return rental_f_deductible;
}

public void setRental_f_deductible(String rental_f_deductible) {
	this.rental_f_deductible = rental_f_deductible;
}

public String getUnisured_underinsuredb_a_deductible() {
	return unisured_underinsuredb_a_deductible;
}

public void setUnisured_underinsuredb_a_deductible(String unisured_underinsuredb_a_deductible) {
	this.unisured_underinsuredb_a_deductible = unisured_underinsuredb_a_deductible;
}

public String getUnisured_underinsuredb_b_deductible() {
	return unisured_underinsuredb_b_deductible;
}

public void setUnisured_underinsuredb_b_deductible(String unisured_underinsuredb_b_deductible) {
	this.unisured_underinsuredb_b_deductible = unisured_underinsuredb_b_deductible;
}

public String getUnisured_underinsuredb_c_deductible() {
	return unisured_underinsuredb_c_deductible;
}

public void setUnisured_underinsuredb_c_deductible(String unisured_underinsuredb_c_deductible) {
	this.unisured_underinsuredb_c_deductible = unisured_underinsuredb_c_deductible;
}

public String getUnisured_underinsuredb_d_deductible() {
	return unisured_underinsuredb_d_deductible;
}

public void setUnisured_underinsuredb_d_deductible(String unisured_underinsuredb_d_deductible) {
	this.unisured_underinsuredb_d_deductible = unisured_underinsuredb_d_deductible;
}

public String getUnisured_underinsuredb_e_deductible() {
	return unisured_underinsuredb_e_deductible;
}

public void setUnisured_underinsuredb_e_deductible(String unisured_underinsuredb_e_deductible) {
	this.unisured_underinsuredb_e_deductible = unisured_underinsuredb_e_deductible;
}

public String getUnisured_underinsuredb_f_deductible() {
	return unisured_underinsuredb_f_deductible;
}

public void setUnisured_underinsuredb_f_deductible(String unisured_underinsuredb_f_deductible) {
	this.unisured_underinsuredb_f_deductible = unisured_underinsuredb_f_deductible;
}

public String getMedical_PIP_a_deductible() {
	return medical_PIP_a_deductible;
}

public void setMedical_PIP_a_deductible(String medical_PIP_a_deductible) {
	this.medical_PIP_a_deductible = medical_PIP_a_deductible;
}

public String getMedical_PIP_b_deductible() {
	return medical_PIP_b_deductible;
}

public void setMedical_PIP_b_deductible(String medical_PIP_b_deductible) {
	this.medical_PIP_b_deductible = medical_PIP_b_deductible;
}

public String getMedical_PIP_c_deductible() {
	return medical_PIP_c_deductible;
}

public void setMedical_PIP_c_deductible(String medical_PIP_c_deductible) {
	this.medical_PIP_c_deductible = medical_PIP_c_deductible;
}

public String getMedical_PIP_d_deductible() {
	return medical_PIP_d_deductible;
}

public void setMedical_PIP_d_deductible(String medical_PIP_d_deductible) {
	this.medical_PIP_d_deductible = medical_PIP_d_deductible;
}

public String getMedical_PIP_e_deductible() {
	return medical_PIP_e_deductible;
}

public void setMedical_PIP_e_deductible(String medical_PIP_e_deductible) {
	this.medical_PIP_e_deductible = medical_PIP_e_deductible;
}

public String getMedical_PIP_f_deductible() {
	return medical_PIP_f_deductible;
}

public void setMedical_PIP_f_deductible(String medical_PIP_f_deductible) {
	this.medical_PIP_f_deductible = medical_PIP_f_deductible;
}

public String getTotal_limit() {
	return total_limit;
}

public void setTotal_limit(String total_limit) {
	this.total_limit = total_limit;
}

public String getTotal_deductible() {
	return total_deductible;
}

public void setTotal_deductible(String total_deductible) {
	this.total_deductible = total_deductible;
}

public String getTotal_premium() {
	return total_premium;
}

public void setTotal_premium(String total_premium) {
	this.total_premium = total_premium;
}

@Override
public String toString() {
	return "coverage [coverage_id=" + coverage_id + ", liability_coverage=" + liability_coverage
			+ ", comprehensive_colision_coverage=" + comprehensive_colision_coverage + ", rental_coverage="
			+ rental_coverage + ", unisured_underinsured_coverage=" + unisured_underinsured_coverage
			+ ", medical_PIP_coverage=" + medical_PIP_coverage + ", customer_id=" + customer_id
			+ ", liability_a_premium=" + liability_a_premium + ", liability_b_premium=" + liability_b_premium
			+ ", liability_c_premium=" + liability_c_premium + ", liability_d_premium=" + liability_d_premium
			+ ", liability_e_premium=" + liability_e_premium + ", liability_f_premium=" + liability_f_premium
			+ ", comprehensive_colision_a_premium=" + comprehensive_colision_a_premium
			+ ", comprehensive_colision_b_premium=" + comprehensive_colision_b_premium
			+ ", comprehensive_colision_c_premium=" + comprehensive_colision_c_premium
			+ ", comprehensive_colision_d_premium=" + comprehensive_colision_d_premium
			+ ", comprehensive_colision_e_premium=" + comprehensive_colision_e_premium
			+ ", comprehensive_colision_f_premium=" + comprehensive_colision_f_premium + ", rental_a_premium="
			+ rental_a_premium + ", rental_b_premium=" + rental_b_premium + ", rental_c_premium=" + rental_c_premium
			+ ", rental_d_premium=" + rental_d_premium + ", rental_e_premium=" + rental_e_premium
			+ ", rental_f_premium=" + rental_f_premium + ", unisured_underinsured_a_premium="
			+ unisured_underinsured_a_premium + ", unisured_underinsured_b_premium=" + unisured_underinsured_b_premium
			+ ", unisured_underinsured_c_premium=" + unisured_underinsured_c_premium
			+ ", unisured_underinsured_d_premium=" + unisured_underinsured_d_premium
			+ ", unisured_underinsured_e_premium=" + unisured_underinsured_e_premium
			+ ", unisured_underinsured_f_premium=" + unisured_underinsured_f_premium + ", medical_PIP_a_premium="
			+ medical_PIP_a_premium + ", medical_PIP_b_premium=" + medical_PIP_b_premium + ", medical_PIP_c_premium="
			+ medical_PIP_c_premium + ", medical_PIP_d_premium=" + medical_PIP_d_premium + ", medical_PIP_e_premium="
			+ medical_PIP_e_premium + ", medical_PIP_f_premium=" + medical_PIP_f_premium + ", liability_a_deductible="
			+ liability_a_deductible + ", liability_b_deductible=" + liability_b_deductible
			+ ", liability_c_deductible=" + liability_c_deductible + ", liability_d_deductible="
			+ liability_d_deductible + ", liability_e_deductible=" + liability_e_deductible
			+ ", liability_f_deductible=" + liability_f_deductible + ", comprehensive_colision_a_deductible="
			+ comprehensive_colision_a_deductible + ", comprehensive_colision_b_deductible="
			+ comprehensive_colision_b_deductible + ", comprehensive_colision_c_deductible="
			+ comprehensive_colision_c_deductible + ", comprehensive_colision_d_deductible="
			+ comprehensive_colision_d_deductible + ", comprehensive_colision_e_deductible="
			+ comprehensive_colision_e_deductible + ", comprehensive_colision_f_deductible="
			+ comprehensive_colision_f_deductible + ", rental_a_deductible=" + rental_a_deductible
			+ ", rental_b_deductible=" + rental_b_deductible + ", rental_c_deductible=" + rental_c_deductible
			+ ", rental_d_deductible=" + rental_d_deductible + ", rental_e_deductible=" + rental_e_deductible
			+ ", rental_f_deductible=" + rental_f_deductible + ", unisured_underinsuredb_a_deductible="
			+ unisured_underinsuredb_a_deductible + ", unisured_underinsuredb_b_deductible="
			+ unisured_underinsuredb_b_deductible + ", unisured_underinsuredb_c_deductible="
			+ unisured_underinsuredb_c_deductible + ", unisured_underinsuredb_d_deductible="
			+ unisured_underinsuredb_d_deductible + ", unisured_underinsuredb_e_deductible="
			+ unisured_underinsuredb_e_deductible + ", unisured_underinsuredb_f_deductible="
			+ unisured_underinsuredb_f_deductible + ", medical_PIP_a_deductible=" + medical_PIP_a_deductible
			+ ", medical_PIP_b_deductible=" + medical_PIP_b_deductible + ", medical_PIP_c_deductible="
			+ medical_PIP_c_deductible + ", medical_PIP_d_deductible=" + medical_PIP_d_deductible
			+ ", medical_PIP_e_deductible=" + medical_PIP_e_deductible + ", medical_PIP_f_deductible="
			+ medical_PIP_f_deductible + ", total_limit=" + total_limit + ", total_deductible=" + total_deductible
			+ ", total_premium=" + total_premium + "]";
}

	
	
	

	
}
