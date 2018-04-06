package com.model;

import java.util.Properties;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

import com.model.model;

public class connection {
	
	
	private static ServiceRegistry sr;
	private  static SessionFactory sf;
	private static  Session session;
	
	
	
	public static Session gSession()
	{
		
		
		Properties prop=new Properties();
		prop.setProperty("hibernate.connection.driver_class", "com.mysql.jdbc.Driver");
		prop.setProperty("hibernate.connection.url", "jdbc:mysql://localhost:3306/test");
		prop.setProperty("hibernate.connection.username", "root");
		prop.setProperty("hibernate.connection.password", "password");
		prop.setProperty("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");
		prop.setProperty("hibernate.hbm2ddl.auto", "update");
		prop.setProperty("hibernate.show_sql", "true");
		prop.setProperty("javax.persistence.validation.mode", "none");
		
		
		Configuration conf=new Configuration();
		conf.addPackage("com.model").addProperties(prop).addAnnotatedClass(model.class);
		
		
		sr=new ServiceRegistryBuilder().applySettings(conf.getProperties()).buildServiceRegistry();
		sf=conf.buildSessionFactory(sr);
		session=sf.openSession();
		
		return session;
		
	}
	
	
	
	

}
