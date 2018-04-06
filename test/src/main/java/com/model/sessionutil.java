package com.model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class sessionutil {
	
	 private static sessionutil instance=new sessionutil();
	    private SessionFactory sessionFactory;
	    
	    public static sessionutil getInstance(){
	            return instance;
	    }
	    
	    @SuppressWarnings("deprecation")
		private sessionutil(){
	        Configuration configuration = new Configuration();
	        configuration.configure("connection.xml");
	                
	        sessionFactory = configuration.buildSessionFactory();
	    }
	    
	    public static Session getSession(){
	        Session session =  getInstance().sessionFactory.openSession();
	        
	        return session;
	    }

}
