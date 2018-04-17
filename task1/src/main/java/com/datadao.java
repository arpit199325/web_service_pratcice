package com;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.customer;
import com.vehicle;
import com.connection;

public class datadao implements datadaoi
{
	
	 Session session;
	 Transaction tx=null;
	 

	public customer add_cutomer(customer c) {
		

		session=connection.gSession();
		tx=session.beginTransaction();
		
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


	public List<customer> customer_detais() {
		
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

}
