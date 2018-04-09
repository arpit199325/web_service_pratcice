package com.model;

public class riskdatasearch {
	
	private String euqlaity,risk_level;

	
	public riskdatasearch() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	public riskdatasearch(String euqlaity, String risk_level) {
		super();
		this.euqlaity = euqlaity;
		this.risk_level = risk_level;
	}




	@Override
	public String toString() {
		return "riskdatasearch [euqlaity=" + euqlaity + ", risk_level=" + risk_level + "]";
	}




	public String getEuqlaity() {
		return euqlaity;
	}

	public void setEuqlaity(String euqlaity) {
		this.euqlaity = euqlaity;
	}

	public String getRisk_level() {
		return risk_level;
	}

	public void setRisk_level(String risk_level) {
		this.risk_level = risk_level;
	}
	
	
	

}
