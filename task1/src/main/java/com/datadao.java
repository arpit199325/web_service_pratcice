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
	 public static float discount_amount=(float) 2.30;
	 public static long increase_amount=2000;
	 
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
			
			if( (currentdate.getYear()-dobdate.getYear())>53) 
			{
				System.out.println("Eligible for the Age Based Discount");
			
				customermodel.setDiscount(discount_amount);
	
			}
			else
			{
				System.out.println("Not Eligible for the age based Discount!!!!");
				customermodel.setDiscount(null);
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		customermodel.setNumber_accident(new_customer.getNumber_accident());
		
		if (new_customer.getNumber_accident()>=2) 
		{
			System.out.println("Not Eligible for A good driver discount !!!!");
			customermodel.setIncrease_amount(increase_amount);
		}
		else
		{
			System.out.println("Eligible for A Good Driver Discount ");
			customermodel.setIncrease_amount(null);
			
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
		
		// TODO Auto-generated method stub
		return null;
	}
	
	
	@Override
	public vehicle add_vehicle(vehicle new_vehicle) {
		
		session=connection.gSession();
		tx=session.beginTransaction();
		System.out.println("my fetched id is "+fetched_id);
		new_vehicle.setCustomer_id(fetched_id);
		session.save(new_vehicle);
		
		tx.commit();
		
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
		
		// TODO Auto-generated method stub
		return null;
	}

	
	
	@Override
	public List summary_details() 
	{
		session=connection.gSession();
		tx=session.beginTransaction();
		
		/*logic 1 - make three query for all three tables and fetch the details*/
		/*logic 2 - write sql inner join query in one call you will get all the details*/
		
		System.out.println("the fetched id for the summary detais are given as "+fetched_id);
		Query q=session.createQuery("SELECT customer.customer_id,customer.address,customer.contact_no,customer.dob,customer.gender,\r\n" + 
				"customer.marital_status,customer.name,customer.number_accident,customer.ssn,vehicle.vehicle_id,vehicle.anti_theft,\r\n" + 
				"vehicle.body_style,vehicle.customerid,vehicle.make,vehicle.model,vehicle.owning_type,vehicle.vehicle_usage,\r\n" + 
				"vehicle.vin,vehicle.year,coverage.coverage_id,coverage.comprehensive_colision_coverage,coverage.customer_id,\r\n" + 
				"coverage.liability_coverage,coverage.medical_PIP_coverage,coverage.rental_coverage,coverage.unisured_underinsured_coverage\r\n" + 
				" FROM \r\n" + 
				" task1.customer,task1.coverage,task1.vehicle where \r\n" + 
				" customer.customer_id=" +fetched_id);
		List details_list=q.list();
		
		tx.commit();
		session.clear();
		session.close();
		
		
		// TODO Auto-generated method stub
		return details_list;
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
