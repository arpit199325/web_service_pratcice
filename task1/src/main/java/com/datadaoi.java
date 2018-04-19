package com;

import java.util.List;

import com.customer;
import com.vehicle;

public interface datadaoi {

	public customer add_cutomer(customer c);
	public vehicle add_vehicle(vehicle v);
	public coverage add_coverage(coverage c);
	public task1model add(task1model task1);
	
	public List<customer> customer_details();
	public List<vehicle> vehicle_details();
	public List<coverage> coverage_details();
	
	public List<customer> customer_all_details(int customer_id);
	public List<vehicle> vehicle_all_details(int vehicle_id);
	public List<coverage> coverage_all_details(int coverage_id);
}
