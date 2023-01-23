package com.hibernate;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.plantadopter.adopter;

public class hibernate {
	
	public static SessionFactory factory;
	
	public static SessionFactory getFactory()
	{
		if(factory==null)
		{
			Configuration config = new Configuration().configure().addAnnotatedClass(adopter.class);
			factory = config.buildSessionFactory();
		}
		return factory;
	}
	
	public void closeFactory()
	{
		if(factory.isOpen())
			factory.close();
	}
}
