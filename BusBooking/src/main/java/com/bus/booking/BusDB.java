package com.bus.booking;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Hashtable;



public class BusDB {
	final String url = "jdbc:mysql://127.0.0.1:3306/bus_travelling_agency";
	final String user = "root";
	final String password = "123@Mysql";
	
	public Hashtable<Integer,Hashtable<String,String>> getBusData(String start_point, String destination){
		ResultSet res = null;
		Hashtable<Integer,Hashtable<String,String>> hash1 =  new Hashtable<Integer, Hashtable<String,String>>();
		try {
		    Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
		    e.printStackTrace();
		    System.out.println("Error: MySQL JDBC Driver not found.");
		}
		
		try {
			Connection conn = DriverManager.getConnection(url, user, password);
			if(conn != null) System.out.println("connected");
			
			String query = "select * from bus_info where(start_point=? and destination=?)";
			PreparedStatement statm = conn.prepareStatement(query);
			statm.setString(1, start_point);
			statm.setString(2, destination);
		    res =statm.executeQuery();
		    int i=1;
			while(res.next()) {
				Hashtable<String, String>v1 = new Hashtable<String, String>();
				v1.put("bus_no",res.getString("bus_no"));
				v1.put("bus_depart_date",res.getString("bus_depart_date"));
				v1.put("capacity",res.getString("capacity"));
				v1.put("avilable",res.getString("avilable"));
				v1.put("start_point",res.getString("start_point"));
				v1.put("destination",res.getString("destination"));
				v1.put("bus_fare",res.getString("bus_fare"));
				//System.out.println(v1);
				hash1.put(i, v1);
				i++;
			}  
			
		}catch(SQLException e) { System.out.print(e.getMessage());}
		
		return hash1;
	}
}
