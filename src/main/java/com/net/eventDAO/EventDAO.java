package com.net.eventDAO;

import java.sql.*;

import com.net.bean.EventBean;
import com.net.connect.Connect;

public class EventDAO {
	static Connection con=null;
	  static int status = 0;
	  static PreparedStatement ps = null;
	 // static Statement st = null;
	  static ResultSet rs = null;
	  
	  public static int AddEvent(EventBean eb) {
			 try {
				  con = Connect.getConnection();
				  
	      String sql = "insert into event_tb (eventname, eventdesc, eventplace, eventdate, eventimage, eventorg) values(?,?,?,?,?,?)";  
				  ps = con.prepareStatement(sql);
				  
				  ps.setString(1, eb.getEventname());
				  ps.setString(2, eb.getEventdesc());
				  ps.setString(3, eb.getEventplace());
				  ps.setString(4, eb.getEventdate());
				  ps.setString(5, eb.getEventimage());
				  ps.setString(6, eb.getEventorg());
				  
			     status = ps.executeUpdate();
			     
				 }
				 catch(Exception e) {
					 e.printStackTrace();
				 }
				  return status;
			  }
	  
	  
	  public static ResultSet Show() {
			 try {
				  con = Connect.getConnection();
				  
	   String sql = "select * from event_tb";  
				  ps = con.prepareStatement(sql);
				  
			     rs = ps.executeQuery();
			     
				 }
				 catch(Exception e) {
					 e.printStackTrace();
				 }
				  return rs;
			  }

	  public static ResultSet ShowEvent(int eventid) {
			 try {
				  con = Connect.getConnection();
				  
	   String sql = "select * from event_tb where eventid=?";  
				  ps = con.prepareStatement(sql);
				  ps.setInt(1, eventid);
				  
			     rs = ps.executeQuery();
			     
				 }
				 catch(Exception e) {
					 e.printStackTrace();
				 }
				  return rs;
			  }

	  public static ResultSet ShowEventName() {
			 try {
				  con = Connect.getConnection();
				  
	   String sql = "select eventname from event_tb";  
				  ps = con.prepareStatement(sql);				  
			     rs = ps.executeQuery();
			     
				 }
				 catch(Exception e) {
					 e.printStackTrace();
				 }
				  return rs;
			  }

	  public static ResultSet ShowEventId(String ename) {
			 try {
				  con = Connect.getConnection();
				  
	   String sql = "select eventid from event_tb where eventname=?";  
				  ps = con.prepareStatement(sql);				  
				  ps.setString(1, ename);
			     rs = ps.executeQuery();
			     
				 }
				 catch(Exception e) {
					 e.printStackTrace();
				 }
				  return rs;
			  }

	  public static int UpdateEvent(EventBean eb) {
			 try {
			  con = Connect.getConnection();
			  
			  String sql = "update event_tb set eventname=?, eventdesc=?, eventplace=?, eventdate=?, eventimage=?, eventorg=? where eventid=?";
			  
			  ps = con.prepareStatement(sql);
			  ps.setString(1, eb.getEventname());
			  ps.setString(2, eb.getEventdesc());
			  ps.setString(3, eb.getEventplace());
			  ps.setString(4, eb.getEventdate());
			  ps.setString(5, eb.getEventimage());
			  ps.setString(6, eb.getEventorg());
			  ps.setInt(7, eb.getEventid()); 
 
			  status = ps.executeUpdate();
			 }
			 catch(Exception e) {
				 e.printStackTrace();
			 }
			  return status;
		  }   

		  public static int DeleteEvent(int eid) {
			 try {
			  con = Connect.getConnection();
			  
			  String sql = "delete from event_tb where eventid=?";
			  
			  ps = con.prepareStatement(sql);
			  ps.setInt(1, eid); 

			  status = ps.executeUpdate();
			 }
			 catch(Exception e) {
				 e.printStackTrace();
			 }
			  return status;
		  }   


}
