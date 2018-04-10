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
	
	riskdatasearch rds=new riskdatasearch();
	
	
	/*risk level data search by equality operators*/
	public List<model> risk_data_search(String equality_core,String risk_core) 
	{
		
		session= sessionutil.gSession();
		tx=session.beginTransaction();
		
		
		if (equality_core.equals(">")) 
		{
			Query q=session.createQuery("from model where risk_level > "+risk_core);
			List<model> data=q.list();
			return data;
			
		}
		else if (equality_core.equals("<")) 
		{
			Query q=session.createQuery("from model where risk_level < "+risk_core);
			List<model> data=q.list();
			return data;
			
		}
		else if (equality_core.equals(">=")) 
		{
			Query q=session.createQuery("from model where risk_level >= "+risk_core);
			List<model> data=q.list();
			return data;
			
		}
		else if (equality_core.equals("<=")) 
		{
			Query q=session.createQuery("from model where risk_level <= "+risk_core);
			List<model> data=q.list();
			return data;
			
		}
		else if (equality_core.equals("==")) 
		{
			Query q=session.createQuery("from model where risk_level = "+risk_core);
			List<model> data=q.list();
			return data;
			
		}
		else if (equality_core.equals("!=")) 
		{
			Query q=session.createQuery("from model where risk_level != "+risk_core);
			List<model> data=q.list();
			return data;
			
		}
		else if (equality_core.equals(" ")) 
		{
			
			return null;
			
		}
		
		tx.commit();
		
		
		return null;
		
	}
	
	
    
    /* input validation test method for zipcode */
    public model input_validation(model m) 
    {
    	session = sessionutil.gSession();        
        tx = session.beginTransaction();
        
       	Query query = session.createQuery("from model where zipcode = " +m.getZipcode());
    	List return_data=query.list();
    
    	if(m.getZipcode() > 0 && return_data.isEmpty() == false ) 
    	{
    		return null;
    		
    	}
    	
    	if(m.getRisk_level()>=0.2 && m.getRisk_level()<=1.9) 
     	{
     		session.save(m);
     		
     	}
         else 
         {
         	return null;
         	
         }
    	
    	 tx.commit();
 		return m;
    }
   
    /*getter setter based method*/
    public model add_data_new_mehtod(model m) 
    {
    	session = sessionutil.gSession();        
        tx = session.beginTransaction();
        
       	Query query = session.createQuery("from model where zipcode = " +m.getZipcode());
    	List return_data=query.list();
    
    	if(return_data.isEmpty()==false) 
    	{
    		return null;
    		
    	}
    	if(m.getState().equals("") && m.getCity().equals("") && (m.getRisk_level()==0) && (m.getZipcode()==0))
    	{
    		return null;
    	}
    	
    	 if(m.getRisk_level()>=0.2 && m.getRisk_level()<=1.9) 
     	{
    		 
    		 model.setCity(m.getCity());
    		 model.setRisk_level(m.getRisk_level());
    		 model.setState(m.getState());
    		
    		 model.setZipcode(m.getZipcode());
     		
    		 
    		 session.save(m);
     		
     	}
         else 
         {
         	return null;
         	
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
    
    public model update_data(model m)
    {
    	
         	session = sessionutil.gSession();
         	tx=session.beginTransaction();
         	
         	session.update(m);
         
            tx.commit();
            return model;
    }
   
       
}
