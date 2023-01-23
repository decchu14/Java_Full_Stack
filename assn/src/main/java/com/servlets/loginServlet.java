package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hibernate.hibernate;
import com.plantadopter.adopter;

public class loginServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
 
    public loginServlet() 
    {
        super();    
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{		
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			HttpSession session=request.getSession();
			session.setAttribute("email",email);
			session.setAttribute("password",password);
			
			PrintWriter out = response.getWriter();
			
			adopter a = new adopter(email,password);
			Session s = hibernate.getFactory().openSession();
			Transaction t = s.beginTransaction();
			
			String query= "from adopter";
		     List<adopter> q = s.createQuery("from adopter").list();
		     for(adopter i:q)
		     {
		    	 if(i.getEmail().equals(email) && i.getPassword().equals(password))
		    	 {
		    		 response.sendRedirect("profile.jsp");
		    	 }
		    	 else
		    	 {	
		    		 out.println("account not found");
		    	 }
		     }
							
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
