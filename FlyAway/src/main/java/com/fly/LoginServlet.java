package com.fly;

import java.io.IOException;
import java.util.List;

import javax.persistence.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;



/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String page = request.getParameter("page");
		if(page.equalsIgnoreCase("adminLogin")){
			adminLogin(request,response);	
		}
		else if(page.equalsIgnoreCase("search")){
			searchResult(request,response);
		}
		else if(page.equalsIgnoreCase("changepassword")){
			changePassword(request,response);
		}
		else if(page.equalsIgnoreCase("addFlight")){
			addFlight(request,response);
		}
	}

	private void addFlight(HttpServletRequest request, HttpServletResponse response) {
		String source = request.getParameter("source");
		String destination = request.getParameter("destination");
		String price = request.getParameter("price");
		String date = request.getParameter("date");
		String airline = request.getParameter("airline");
		String flightNo = request.getParameter("flightNo");
		SessionFactoryUtil util = new SessionFactoryUtil();
		SessionFactory factory = util.getSessionFactory();
		Session session = factory.openSession();
		if(source.equalsIgnoreCase("Please choose source")){
			request.setAttribute("failure", "Please select valid source");
			session.close();
		}	
		else if(destination.equalsIgnoreCase("Please choose destination"))
		{	request.setAttribute("failure", "Please select valid destination");
			session.close();
		}
		else if(airline.equalsIgnoreCase("Please choose airline")){
			request.setAttribute("failure", "Please select valid airline");
			session.close();
		}
		else{
		Transaction transaction = session.beginTransaction();
		Flight flight = new Flight();
		flight.setAirline(airline);
		flight.setPrice(price);
		flight.setSource(source);
		flight.setDestination(destination);
		flight.setDate(date);
		flight.setFlightNo(flightNo);
		session.save(flight);
		transaction.commit();
		request.setAttribute("success", "Flight added Successfully");
		}
		RequestDispatcher rd = request.getRequestDispatcher("addFlight.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	private void changePassword(HttpServletRequest request,HttpServletResponse response) {
		String email = request.getParameter("loginId");
		String password = request.getParameter("password");
		String newPassword = request.getParameter("newPassword");
		SessionFactoryUtil util = new SessionFactoryUtil();
		SessionFactory factory = util.getSessionFactory();
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		User user = (User)session.get(User.class, email);
		String dbPassword = null;
		if(user != null){
			 dbPassword = user.getPassword();
		}
		if(dbPassword != null && dbPassword.equals(password)){
			user.setPassword(newPassword);
			session.update(user);
			try {
				response.sendRedirect("adminLogin.jsp");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else{
			request.setAttribute("password", "Please enter correct Password");
			try {
				RequestDispatcher req = request.getRequestDispatcher("changePassword.jsp");
				try {
					req.forward(request, response);
				} catch (ServletException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		transaction.commit();
	}

	private void searchResult(HttpServletRequest request,HttpServletResponse response) {
		String date = request.getParameter("date");
		String source = request.getParameter("source");
		String destination = request.getParameter("destination");
		String noOfPerson = request.getParameter("noOfPerson");
		SessionFactoryUtil util = new SessionFactoryUtil();
		SessionFactory factory = util.getSessionFactory();
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		//Flight filget = session.get(Flight.class, date);
		Query query = session.createQuery("from Flight where date =:date AND source=:source AND destination=:destination");
		query.setParameter("date", date);
		query.setParameter("source", source);
		query.setParameter("destination", destination);
		List<Flight> flight = query.getResultList();
		HttpSession session1 = request.getSession();	 
		request.setAttribute("flight1",flight);
		RequestDispatcher dr = request.getRequestDispatcher("bookTicket.jsp");
			//response.sendRedirect("bookTicket.jsp");
			
				try {
					dr.forward(request, response);
				} catch (ServletException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
		}

	private void adminLogin(HttpServletRequest request,HttpServletResponse response) {
		String dbPassword = null;
		String email = request.getParameter("loginId");
		String password = request.getParameter("password");
		SessionFactoryUtil util = new SessionFactoryUtil();
		SessionFactory factory = util.getSessionFactory();
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		User user = (User)session.get(User.class, email);
		if(user != null){
			 dbPassword = user.getPassword();
		}
		if(dbPassword != null && dbPassword.equals(password)){
			try {
				response.sendRedirect("addFlight.jsp");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else{
			request.setAttribute("failure", "Please enter valid credentials");
			RequestDispatcher rd = request.getRequestDispatcher("adminLogin.jsp");
			try {
				rd.forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	
		transaction.commit();// TODO Auto-generated method stub
	}

}
