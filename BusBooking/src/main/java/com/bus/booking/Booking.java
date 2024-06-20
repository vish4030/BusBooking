package com.bus.booking;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/passenger")
public class Booking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Booking() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("bus_no", request.getParameter("bus_no"));
		request.setAttribute("bus_no", request.getParameter("bu"));
		request.setAttribute("bus_no", request.getParameter("bus_no"));
		request.setAttribute("bus_no", request.getParameter("bus_no"));
		request.setAttribute("bus_no", request.getParameter("bus_no"));
		request.setAttribute("bus_no", request.getParameter("bus_no"));
		
		response.sendRedirect(request.getContextPath() + "/Passenger.jsp");
	}

}
