package com;

import java.util.List;

import com.customer;
import com.vehicle;

public interface datadaoi {

	public customer add_cutomer(customer new_customer);
	public vehicle add_vehicle(vehicle new_vehicle);
	public coverage add_coverage(coverage new_coverage);
	
	public List<customer> customer_all_details();
	public List<vehicle> vehicle_all_details();
	public List<coverage> coverage_all_details();
	
	public List<customer> customer_details_id();
	public List<vehicle> vehicle_details_id();
	public List<coverage> coverage_details_id();
}
