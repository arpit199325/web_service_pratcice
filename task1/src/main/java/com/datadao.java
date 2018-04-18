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
	 

	public customer add_cutomer(customer c) {
		

		session=connection.gSession();
		tx=session.beginTransaction();
		
		customer cmodel=new customer();
		
		cmodel.setName(c.getName());
		cmodel.setAddress(c.getAddress());
		cmodel.setSsn(c.getSsn());
		cmodel.setDob(c.getDob());
		
		Date currentdate=Calendar.getInstance().getTime();

		try {
			
			Date dobdate=new SimpleDateFormat("mm/dd/yyyy").parse(c.getDob());
			
			if( (currentdate.getYear()-dobdate.getYear())>53) {
				System.out.println("discount apply successfully for the age!!!");
			}
			else
			{
				System.out.println("erorrr discount not apply");
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		cmodel.setNumber_accident(c.getNumber_accident());
		cmodel.setMarital_status(c.getMarital_status());
		cmodel.setGender(c.getGender());
		cmodel.setContact_no(c.getContact_no());
		
		session.save(c);
		tx.commit();
		session.clear();
		session.close();
		
		
		// TODO Auto-generated method stub
		return null;
	}


	public vehicle add_vehicle(vehicle v) {
		

		session=connection.gSession();
		tx=session.beginTransaction();
		
		session.save(v);
		
		tx.commit();
		session.clear();
		session.close();
		
		
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public coverage add_coverage(coverage c) {
		
		
		session=connection.gSession();
		tx=session.beginTransaction();
		
		session.save(c);
		
		tx.commit();
		session.clear();
		session.close();
		
		
		// TODO Auto-generated method stub
		return null;
	}



	public List<customer> customer_details() {
		
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
	public List<vehicle> vehicle_details() {
		
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
	public List<coverage> coverage_details() {
		
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

	@Override
	public List<coverage> coverage_all_details(int coverage_id) {
		
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

	
	@Override
	public List<customer> customer_all_details(int customer_id) {
		
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
	public List<vehicle> vehicle_all_details(int vehicle_id) {
		
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

}
