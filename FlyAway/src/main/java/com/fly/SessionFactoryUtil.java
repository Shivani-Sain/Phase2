package com.fly;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class SessionFactoryUtil {
	public SessionFactory getSessionFactory(){
		SessionFactory factory = new Configuration().configure("/hibernate.cfg.xml").addAnnotatedClass(User.class).addAnnotatedClass(Flight.class).buildSessionFactory();
		return factory;
	}
}
