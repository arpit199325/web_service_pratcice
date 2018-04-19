package com;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class datadao implements datadaoi
{
	
	 Session session;
	 Transaction tx=null;
	 
	 public static double total_deductible=1000;
	 public static double total_premium=500;
	 public static double total_limit=100000;
	 
	 customer customermodel=new customer();
	 vehicle vehiclemodel=new vehicle();
	 coverage coveragemodel=new coverage();
	 coverage_count count=new coverage_count();
	 
	 /*Add Details Section*/
	@Override
	public customer add_cutomer(customer new_customer) {
		
		session=connection.gSession();
		tx=session.beginTransaction();
		
		customermodel.setName(new_customer.getName());
		customermodel.setAddress(new_customer.getAddress());
		customermodel.setSsn(new_customer.getSsn());
		customermodel.setDob(new_customer.getDob());
		
		Date currentdate=Calendar.getInstance().getTime();

		try {
			
			Date dobdate=new SimpleDateFormat("mm/dd/yyyy").parse(new_customer.getDob());
			
			if( (currentdate.getYear()-dobdate.getYear())>53) {
				System.out.println("discount apply successfully for the age!!!");
				
				count.setAge_discount((total_premium*10)/100);   
				
			}
			else
			{
				System.out.println("erorrr discount not apply");
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		customermodel.setNumber_accident(new_customer.getNumber_accident());
		customermodel.setMarital_status(new_customer.getMarital_status());
		customermodel.setGender(new_customer.getGender());
		customermodel.setContact_no(new_customer.getContact_no());
		
		session.save(new_customer);
		tx.commit();
		session.clear();
		session.close();
		
		
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public vehicle add_vehicle(vehicle new_vehicle) {
		
		session=connection.gSession();
		tx=session.beginTransaction();
		
		session.save(new_vehicle);
		
		tx.commit();
		session.clear();
		session.close();
		
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public coverage add_coverage(coverage new_coverage) {
		
		
		session=connection.gSession();
		tx=session.beginTransaction();
		
		
		session.save(new_coverage);
		
		tx.commit();
		session.clear();
		session.close();
		
		
		// TODO Auto-generated method stub
		return null;
	}

	/*List Details Section*/
	@Override
	public List<customer> customer_all_details() {
		
		session=connection.gSession();
		tx=session.beginTransaction();
		
		Query q=session.createQuery("from customer");
		List<customer> customer_list= q.list();
		
		tx.commit();
		session.clear();
		session.close();
		
		// TODO Auto-generated method stub
		return customer_list;
	}
	
	@Override
	public List<vehicle> vehicle_all_details() {
		
		session=connection.gSession();
		tx=session.beginTransaction();
		
		Query q=session.createQuery("from vehicle");
		List<vehicle> listofvehicles=q.list();
		
		tx.commit();
		session.clear();
		session.close();
		
		// TODO Auto-generated method stub
		return listofvehicles;
	}
	
	@Override
	public List<coverage> coverage_all_details() {
		
		session=connection.gSession();
		tx=session.beginTransaction();
		
		Query q=session.createQuery("from coverage");
		List<coverage> list_coverage=q.list();
		
		tx.commit();
		session.clear();
		session.close();
		
		// TODO Auto-generated method stub
		return list_coverage;
	}

	/*Details By Id*/
	@Override
	public List<customer> customer_details_id(int customer_id) {
		
		session=connection.gSession();
		tx=session.beginTransaction();
		
		Query q=session.createQuery("from customer where customer_id = "+customer_id);
		List<customer> list_customer=q.list();
		
		tx.commit();
		session.clear();
		session.close();
		
		// TODO Auto-generated method stub
		return list_customer;
	}

	@Override
	public List<vehicle> vehicle_details_id(int vehicle_id) {
		
		session=connection.gSession();
		tx=session.beginTransaction();
		
		Query q=session.createQuery("from vehicle where vehicle_id = "+vehicle_id);
		List<vehicle> list_vehicle=q.list();
		
		tx.commit();
		session.clear();
		session.close();
		
		// TODO Auto-generated method stub
		return list_vehicle;
	}
	
	@Override
	public List<coverage> coverage_details_id(int coverage_id) {
		
		session=connection.gSession();
		tx=session.beginTransaction();
		
		Query q=session.createQuery("from coverage where coverage_id = "+coverage_id);
		List<coverage> list_coverage=q.list();
		
		tx.commit();
		session.clear();
		session.close();
		
		// TODO Auto-generated method stub
		return list_coverage;
	}



	/*one page application details*/
	@Override
	public task1model add(task1model task1) {
		
		session=connection.gSession();
		tx=session.beginTransaction();
		
		task1model model=new task1model();

		model.setName(task1.getName());
		model.setAddress(task1.getAddress());
		model.setSsn(task1.getSsn());
		
		model.setDob(task1.getDob());
		
		Date currentdate=Calendar.getInstance().getTime();
		
		try {
			Date dobdate=new SimpleDateFormat("mm/dd/yyyy").parse(task1.getDob());
			if(currentdate.getYear()-dobdate.getYear()<=52) 
			{
				
				System.out.println("Not eligible for the senior discount!!!");
			}
			else
			{
				
				System.out.println("eligible for the senior discount");
				double discount_deductible=(total_deductible*10)/100;
				
				
			}
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		model.setNumber_accident(task1.getNumber_accident());
		
		if (task1.getNumber_accident()<=3) 
		{
			System.out.println("eleigible for the good driver");
		}
		else
		{
			
			System.out.println("not a good driver");
			
		}
		
		model.setMarital_status(task1.getMarital_status());
		model.setGender(task1.getGender());
		model.setContact_no(task1.getContact_no());
		model.setYear(task1.getYear());
		model.setVin(task1.getVin());
		model.setModel(task1.getModel());
		model.setBody_style(task1.getBody_style());
		model.setAnti_theft(task1.getAnti_theft());
		model.setOwning_type(task1.getOwning_type());
		model.setVehicle_usage(task1.getVehicle_usage());
		model.setMileage(task1.getMileage());
		model.setMore_vehicle(task1.getMore_vehicle());
		model.setComprehensive_colision_coverage(task1.getComprehensive_colision_coverage());
		model.setRental_coverage(task1.getRental_coverage());
		model.setUnisured_underinsured_coverage(task1.getUnisured_underinsured_coverage());
		model.setMedical_PIP_coverage(task1.getMedical_PIP_coverage());
		
		
		session.save(task1);
		tx.commit();
		session.clear();
		session.close();
		
		
		// TODO Auto-generated method stub
		return null;
	}

}
