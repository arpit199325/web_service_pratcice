package com;

import javax.persistence.Column;
import javax.persistence.Entity;


@Entity
public class coverage {
	@Column
	private String coverage_types;
	
	public coverage() {
		// TODO Auto-generated constructor stub
	}
	
	

	@Override
	public String toString() {
		return "coverage [coverage_types=" + coverage_types + "]";
	}



	public coverage(String coverage_types) {
		super();
		this.coverage_types = coverage_types;
	}



	public String getCoverage_types() {
		return coverage_types;
	}

	public void setCoverage_types(String coverage_types) {
		this.coverage_types = coverage_types;
	}
	
	
	
}
