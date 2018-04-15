package com;

import java.util.List;

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
		
		List<customer> customer_list=(List<customer>) session.createQuery("from customer").list();
		
		
		// TODO Auto-generated method stub
		return customer_list;
	}

}
