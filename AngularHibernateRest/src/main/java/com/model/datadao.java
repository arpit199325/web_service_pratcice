package com.model;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.model.model;

public class datadao {
	
	Session session;
	Transaction tx;
	
	model model = new model();

    
    /* input validation test method */
    public model input_validation(model m) 
    {
    	session = sessionutil.gSession();        
        tx = session.beginTransaction();
        
       	Query query = session.createQuery("from model where zipcode ="+m.getZipcode());
    	List return_data=query.list();
    
    	if(return_data.isEmpty()==false) 
    	{
    		return null;
    		
    	}
    	else
    	{ 
        session.save(m);
    	}
    	 tx.commit();
 		return m;
    }
    
    
    public List<model> get_alldata(){
         session = sessionutil.gSession(); 
         tx=session.beginTransaction();
        Query query = session.createQuery("from model");
        List<model> alldata = query.list();
        
        tx.commit();
        session.close();
        return alldata;
    }
 
    public List<model> get_zipcode(int zipcode)
    {
        session = sessionutil.gSession();   
        tx=session.beginTransaction();
        Query query = session.createQuery("from model where zipcode ="+zipcode);
        List<model> alldata = query.list();
        
        tx.commit();
        session.close();
        return alldata;
    }
    
    public int delete_data(int id) {
         session = sessionutil.gSession();
         tx = session.beginTransaction();
        String hql = "delete from model where id = :id";
        Query query = session.createQuery(hql);
        query.setInteger("id",id);
        int rowCount = query.executeUpdate();
        System.out.println("Rows affected: " + rowCount);
        tx.commit();
        session.close();
        return rowCount;
    }
    
    public model update_data(int id, model m){
    	if(id <=0)  
            return null;  
      		
         	session = sessionutil.gSession();
         	tx=session.beginTransaction();
         	Query query;
           	
         	String hql = "update model set zipcode = ?, risk_level = ?,city = ?,state = ? where id = ?";
   
         	query = session.createQuery(hql);
         	
         	
         	query = session.createQuery("from model where zipcode ="+m.getZipcode());
         	List return_data = query.list();
        	if(return_data.isEmpty()==false) 
        	{
        		return null;
        	}
        	query.setInteger(1, m.getZipcode());
         	query.setFloat(2, m.getRisk_level());
         	query.setString(3, m.getCity());
         	query.setString(4, m.getState());
         	query.setInteger(5, id);
            
            return model;
        	}   
       
}
