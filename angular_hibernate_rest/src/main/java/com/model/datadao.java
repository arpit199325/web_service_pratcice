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
	
	public model add_data(model m){
         session =hibernateutil.gSession();       
         tx = session.beginTransaction();
       
        model model=  add_data_session(session,m);
        
        tx.commit();
        session.close();
        return model;
        
    }
    
    private model add_data_session(Session session, model m){
    	
        
    	model.setZipcode(m.getZipcode());
    	model.setRisk_level(m.getRisk_level());
    	model.setCity(m.getCity());
    	model.setState(m.getState());
        
        session.save(model);
		return model;
    }
    
    
    /* input validation test method */
    public model input_validation(model m) 
    {
    	session =hibernateutil.gSession();         
          tx = session.beginTransaction();
        
    	
    	
       	Query query = session.createQuery("from model where zipcode ="+m.getZipcode());
    	List return_data=query.list();
    
    	if(return_data.isEmpty()==false) 
    	{
    		return null;
    		
    	}
    	else
    	{
    	model.setZipcode(m.getZipcode());
    	model.setRisk_level(m.getRisk_level());
    	model.setCity(m.getCity());
    	model.setState(m.getState());
        
        session.save(model);
        
        tx.commit();
		return model;
    	}
    }
    
    
    
    
    
    public List<model> get_alldata(){
    	session =hibernateutil.gSession();   
         tx=session.beginTransaction();
        Query query = session.createQuery("from model");
        List<model> alldata = query.list();
        
        tx.commit();
        session.close();
        return alldata;
    }
 
    public List<model> get_zipcode(int zipcode)
    {
    	session =hibernateutil.gSession();   
        tx=session.beginTransaction();
        Query query = session.createQuery("from model where zipcode ="+zipcode);
        List<model> alldata = query.list();
        
        tx.commit();
        session.close();
        return alldata;
    }
    
    
    
    
    public int delete_data(int id) {
    	session =hibernateutil.gSession();  
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
      	
         	
    		session =hibernateutil.gSession();  
         	tx=session.beginTransaction();
        	
        	
            
            String hql = "update model set zipcode = :zipcode, risk_level = :risk_level,city = :city,state = :state where id = :id";
            Query query = session.createQuery(hql);
            query.setInteger("id",id);
            
         
            Query qc = session.createQuery("from model where zipcode ="+ query.setInteger("zipcode",m.getZipcode()));
        	List return_data=qc.list();
        	if(return_data.isEmpty()==false) 
        	{
        		return null;
        	}
        	else {
        	query.setInteger("zipcode",m.getZipcode());
            query.setFloat("risk_level", m.getRisk_level());
            query.setString("city", m.getCity());
            query.setString("state", m.getState());
            int rowCount = query.executeUpdate();
            System.out.println("Rows affected: " + rowCount);
            return model;
        	}
        		
        	
    }

}
