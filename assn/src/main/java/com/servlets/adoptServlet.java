package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hibernate.hibernate;
import com.plantadopter.adopter;

public class adoptServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public adoptServlet() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		PrintWriter out = response.getWriter();
		HttpSession session=request.getSession(false);
		int already_adopted=(Integer) session.getAttribute("plants");
//		out.println(already_adopted);
		int cur_adopting = Integer.parseInt(request.getParameter("plants"));
		already_adopted = already_adopted + cur_adopting;
//		out.println(already_adopted);
		String email=session.getAttribute("email").toString();
		String name=session.getAttribute("name").toString();
		String password=session.getAttribute("password").toString();
		long phone = (Long) session.getAttribute("phone");
		
		
//		out.println(cur_adopting);
		
		adopter a = new adopter(email,name,password,phone,already_adopted);
		Session s = hibernate.getFactory().openSession();
	
		Transaction t = s.beginTransaction();
		s.saveOrUpdate(a);
		t.commit();
		s.close();
		response.sendRedirect("profile.jsp");
		
		
		
	}

}
