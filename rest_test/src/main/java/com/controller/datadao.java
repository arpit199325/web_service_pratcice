package com.controller;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.model.model;
import com.util.connection;

public class datadao implements datadaoi{
	
	 Session session;
	 Transaction tx=null;
	 
	 
	@Override
	public model add_model(model m) {
		
		session=connection.gSession();
		tx=session.beginTransaction();
	
		session.save(m);
		
		tx.commit();
		
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public model update_model(int id,model m) {
		
		session=connection.gSession();
		tx=session.beginTransaction();
		
		session.update(m);
		
		tx.commit();
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String delete_model(model m) {
		
		session=connection.gSession();
		tx=session.beginTransaction();
		
		session.delete(m);
		
		tx.commit();
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public model one_data(int zipcode) {
		
		
		session=connection.gSession();
		tx=session.beginTransaction();
		
		model m=(model) session.createQuery("select id,zipcode,risk_level,city,state from rest_customer where zipcode = :zipcode ");
		
		tx.commit();
		// TODO Auto-generated method stub
		return m;
	}
	@Override
	public List<model> list_data(String state) {
		

		session=connection.gSession();
		tx=session.beginTransaction();
		
		List list=(List) session.createQuery("select zipcode,risk_level from rest_customer where state = ?").list();
		
		tx.commit();
		// TODO Auto-generated method stub
		return list;
	}
	@Override
	public List<model> all_data() {
		
		session=connection.gSession();
		tx=session.beginTransaction();
		
		List list=(List) session.createQuery("from rest_customer").list();
		
		tx.commit();
		// TODO Auto-generated method stub
		return list;
	}
	
	

}
