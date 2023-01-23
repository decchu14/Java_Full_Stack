package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hibernate.hibernate;
import com.plantadopter.adopter;

public class regServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public regServlet() {
        super();
        
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			long phone = Long.parseLong(request.getParameter("phone"));
			int plants = 0;
			
			adopter a = new adopter(email,name,password,phone,plants);
			Session session = hibernate.getFactory().openSession();
			Transaction t = session.beginTransaction();
			session.save(a);
			t.commit();
			session.close();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
