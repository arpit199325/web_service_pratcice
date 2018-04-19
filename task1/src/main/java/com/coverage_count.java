package com;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="coverage_information")
public class coverage_count {
	
	@Id
	@GeneratedValue
	private int coverage_info_id;
	@Column(name="ssn")
	private int ssn;
	@Column(name="deductible_amount")
	private double deductible;
	@Column(name="premium_amount")
	private double premium;
	@Column(name="limit_amount")
	private double limit;
	@Column(name="age_discount_amount")
	private double age_discount;
	@Column(name="accident_info")
	private double accident_data;
	
	
	public coverage_count() {
		// TODO Auto-generated constructor stub
	}


	public coverage_count(int coverage_info_id, int ssn, double deductible, double premium, double limit,
			double age_discount, double accident_data) {
		super();
		this.coverage_info_id = coverage_info_id;
		this.ssn = ssn;
		this.deductible = deductible;
		this.premium = premium;
		this.limit = limit;
		this.age_discount = age_discount;
		this.accident_data = accident_data;
	}


	public int getCoverage_info_id() {
		return coverage_info_id;
	}


	public void setCoverage_info_id(int coverage_info_id) {
		this.coverage_info_id = coverage_info_id;
	}


	public int getSsn() {
		return ssn;
	}


	public void setSsn(int ssn) {
		this.ssn = ssn;
	}


	public double getDeductible() {
		return deductible;
	}


	public void setDeductible(double deductible) {
		this.deductible = deductible;
	}


	public double getPremium() {
		return premium;
	}


	public void setPremium(double premium) {
		this.premium = premium;
	}


	public double getLimit() {
		return limit;
	}


	public void setLimit(double limit) {
		this.limit = limit;
	}


	public double getAge_discount() {
		return age_discount;
	}


	public void setAge_discount(double age_discount) {
		this.age_discount = age_discount;
	}


	public double getAccident_data() {
		return accident_data;
	}


	public void setAccident_data(double accident_data) {
		this.accident_data = accident_data;
	}


	@Override
	public String toString() {
		return "coverage_count [coverage_info_id=" + coverage_info_id + ", ssn=" + ssn + ", deductible=" + deductible
				+ ", premium=" + premium + ", limit=" + limit + ", age_discount=" + age_discount + ", accident_data="
				+ accident_data + "]";
	}



}
