package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hibernate.hibernate;
import com.plantadopter.adopter;

public class deleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(false);
		String email=session.getAttribute("email").toString();
		Session s = hibernate.getFactory().openSession();
		Transaction t = s.beginTransaction();
		adopter a = new adopter(email);
		a.setEmail(email);
		s.remove(a);
		t.commit();
		s.close();
		session.invalidate();
		response.sendRedirect("index.jsp");
		
	}

}
