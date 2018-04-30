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
	 
	 customer customermodel=new customer();
	 vehicle vehiclemodel=new vehicle();
	 coverage coveragemodel=new coverage();
	 coverage_count count=new coverage_count();
	 public static int fetched_id;

	 
	 /*Add Details Section*/
	@Override
	public customer add_cutomer(customer new_customer) {
		
		session=connection.gSession();
		tx=session.beginTransaction();
		
		customermodel.setName(new_customer.getName());
		customermodel.setAddress(new_customer.getAddress());
		
		Query q=session.createQuery("from customer where ssn ="+new_customer.getSsn());
		List<customer> ssn_list=q.list();
		if(ssn_list.isEmpty()==false) 
		{
			return null;
		}
		else
		{
			customermodel.setSsn(new_customer.getSsn());
		}
		
		customermodel.setDob(new_customer.getDob());
		
		Date currentdate=Calendar.getInstance().getTime();
		
		try {
			
			Date dobdate=new SimpleDateFormat("mm/dd/yyyy").parse(new_customer.getDob());
			
			if( (currentdate.getYear()-dobdate.getYear())>53) 
			{
				System.out.println("Eligible for the Age Based Discount");
			
				customermodel.setAge_discount(new_customer.getAge_discount());
			}
			else
			{
				System.out.println("Not Eligible for the age based Discount!!!!");
				new_customer.setAge_discount(null);
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		customermodel.setNumber_accident(new_customer.getNumber_accident());
		
		if (new_customer.getNumber_accident()<=2) 
		{
			System.out.println("Eligible for A Good Driver Discount");
			new_customer.setIncrease_accident(null);
		}
		else
		{
			System.out.println("Not Eligible for A good driver discount !!!!");
			customermodel.setIncrease_accident(new_customer.getIncrease_accident());
		}
		
		customermodel.setMarital_status(new_customer.getMarital_status());
		customermodel.setGender(new_customer.getGender());
		customermodel.setContact_no(new_customer.getContact_no());
		
		datadao dao=new datadao();
		
		session.save(new_customer);
		tx.commit();
		
		fetched_id= new_customer.getCustomer_id();
		System.out.println(new_customer.getCustomer_id());
		
		
//		
//		Query q=session.createQuery("select * from customer where customer_id="+fetched_id);
//		List<customer> fetched_customer_list=q.list();
//		
//		System.out.println(fetched_customer_list);
//		
		
		
//		Query q =session.createQuery("select customer_id from customer where ssn="+new_customer.getSsn());
//		List list=q.list();
//		
		session.clear();
		session.close();
		
		// TODO Auto-generated method stub
		return null;
	}
	
	
	@Override
	public vehicle add_vehicle(vehicle new_vehicle) {
		
		session=connection.gSession();
		tx=session.beginTransaction();
		
		vehiclemodel.setYear(new_vehicle.getYear());
		
		if(Calendar.getInstance().get(Calendar.YEAR)-new_vehicle.getYear()<=1) 
		{
			vehiclemodel.setYear_discount(new_vehicle.getYear_discount());
		}
		else
		{
			new_vehicle.setYear_discount(null);
		}
		
		vehiclemodel.setAnti_theft(new_vehicle.getAnti_theft());
		
		if(new_vehicle.getAnti_theft().equals("yes")) 
		{
			vehiclemodel.setAnti_theft_discount(new_vehicle.getAnti_theft_discount());
		}
		else
		{
			new_vehicle.setAnti_theft_discount(null);
		}
		
		System.out.println("my fetched id is "+fetched_id);
		new_vehicle.setCustomer_id(fetched_id);
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
		
		System.out.println("my fetched id is "+fetched_id);
		new_coverage.setCustomer_id(fetched_id);
		
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
	public List<customer> customer_details_id() {
		
		session=connection.gSession();
		tx=session.beginTransaction();
		
		Query q=session.createQuery("from customer where customer_id = "+fetched_id);
		List<customer> list_customer=q.list();
		
		tx.commit();
		session.clear();
		session.close();
		
		// TODO Auto-generated method stub
		return list_customer;
	}

	@Override
	public List<vehicle> vehicle_details_id() {
		
		session=connection.gSession();
		tx=session.beginTransaction();
		
		Query q=session.createQuery("from vehicle where customer_id ="+fetched_id);
		List<vehicle> list_vehicle=q.list();
		
		tx.commit();
		session.clear();
		session.close();
		
		// TODO Auto-generated method stub
		return list_vehicle;
	}
	
	@Override
	public List<coverage> coverage_details_id() {
		
		session=connection.gSession();
		tx=session.beginTransaction();
		
		Query q=session.createQuery("from coverage where customer_id = "+fetched_id);
		List<coverage> list_coverage=q.list();
		
		tx.commit();
		session.clear();
		session.close();
		
		// TODO Auto-generated method stub
		return list_coverage;
	}
	
}
