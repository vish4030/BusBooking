package com.bus.booking;

import com.bus.booking.BusDB;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Hashtable;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/findBus")
public class BusControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BusControl() {
        super();
      
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String start_point = request.getParameter("start_point");
		String destination = request.getParameter("destination");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("BusView.jsp");
		BusDB db = new BusDB();
		Hashtable<Integer,Hashtable<String,String>> hash1 = new Hashtable<Integer,Hashtable<String,String>>();
				hash1 = db.getBusData(start_point, destination);
		request.setAttribute("data", hash1);
		dispatcher.forward(request, response);
		
	}

}
