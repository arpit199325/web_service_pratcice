package com.model;

import java.util.Properties;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

public class hibernateutil {

	
	
	
	
	private static ServiceRegistry sr;
	private  static SessionFactory sf;
	private static  Session session;
	
	
	
	public static Session gSession()
	{
		
		
		Properties prop=new Properties();
		prop.setProperty("hibernate.connection.driver_class", "com.mysql.jdbc.Driver");
		prop.setProperty("hibernate.connection.url", "jdbc:mysql://localhost:3306/hibernate");
		prop.setProperty("hibernate.connection.username", "root");
		prop.setProperty("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");
		prop.setProperty("hibernate.hbm2ddl.auto", "update");
		prop.setProperty("hibernate.show_sql", "true");
		
		
		
		
		Configuration conf=new Configuration();
		conf.addPackage("com.model").addProperties(prop).addAnnotatedClass(model.class);
		
		
		sr=new ServiceRegistryBuilder().applySettings(conf.getProperties()).buildServiceRegistry();
		sf=conf.buildSessionFactory(sr);
		session=sf.openSession();
		
		
		
		
		
		
		return session;
		
	}
	
	
	
	
}
