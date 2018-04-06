package com.model;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.model.model;

public class datadao {
	
	public model add_data(model m){
        Session session = connection.gSession();        
        Transaction tx = session.beginTransaction();
       
        model model=  add_data_session(session,m);
        
        tx.commit();
        session.close();
        return model;
        
    }
    
    private model add_data_session(Session session, model m){
    	model model = new model();
        
    	model.setZipcode(m.getZipcode());
    	model.setRisk_level(m.getRisk_level());
    	model.setCity(m.getCity());
    	model.setState(m.getState());
        
        session.save(model);
		return model;
    }
    
    
    /* input validation test method */
    public String input_validation(model m) 
    {
    	 Session session = connection.gSession();        
         Transaction tx = session.beginTransaction();
        
    	
    	
    	model model = new model();
    	
       	Query query = session.createQuery("from model where zipcode ="+m.getZipcode());
    	List return_data=query.list();
    
    	if(return_data.isEmpty()==false) 
    	{
    		return "Already exist Zipcode";
    		
    	}
    	else
    	{
    	model.setZipcode(m.getZipcode());
    	model.setRisk_level(m.getRisk_level());
    	model.setCity(m.getCity());
    	model.setState(m.getState());
        
        session.save(model);
        
        tx.commit();
		return "Data Added Successfully";
    	}
    }
    
    
    
    
    
    public List<model> get_alldata(){
    	Session session = connection.gSession(); 
        Query query = session.createQuery("from model");
        List<model> alldata = query.list();
        return alldata;
    }
 
    public List<model> get_zipcode(int zipcode)
    {
    	 Session session = connection.gSession();         
        Query query = session.createQuery("from model where zipcode ="+zipcode);
        List<model> alldata = query.list();
        session.close();
        return alldata;
    }
    
    
    
    
    public int delete_data(int id) {
    	 Session session = connection.gSession();       
        Transaction tx = session.beginTransaction();
        String hql = "delete from model where id = :id";
        Query query = session.createQuery(hql);
        query.setInteger("id",id);
        int rowCount = query.executeUpdate();
        System.out.println("Rows affected: " + rowCount);
        tx.commit();
        session.close();
        return rowCount;
    }
    
    public int update_data(int id, model m){
         if(id <=0)  
               return 0;  
         Session session = connection.gSession();       
            Transaction tx = session.beginTransaction();
            String hql = "update model set zipcode = :zipcode, risk_level = :risk_level,city = :city,state = :state where id = :id";
            Query query = session.createQuery(hql);
            query.setInteger("id",id);
            query.setInteger("zipcode",m.getZipcode());
            query.setFloat("risk_level", m.getRisk_level());
            query.setString("city", m.getCity());
            query.setString("state", m.getState());
            int rowCount = query.executeUpdate();
            System.out.println("Rows affected: " + rowCount);
            tx.commit();
            session.close();
            return rowCount;
    }

}
