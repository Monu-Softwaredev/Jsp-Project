package com.net.adminDAO;

import com.net.bean.AdminBean;
import com.net.connect.Connect;
import java.sql.*;

public class AdminDAO {

	static Connection con=null;
	  static int status = 0;
	  static PreparedStatement ps = null;
	 // static Statement st = null;
	  static ResultSet rs = null;
	  
	   
	  public static int AdLogin(AdminBean ab) {
			 try {
				  con = Connect.getConnection();
				  
	      String sql = "select * from admin_tb where adminusername=? and password=?";  
				  ps = con.prepareStatement(sql);
				 ps.setString(1, ab.getAdminusername());
				  ps.setString(2, ab.getPassword());
				  
			     rs = ps.executeQuery();
			     
			     if(rs.next())
			    	 status =1;
			     else
			    	 status = 0;
				 }
				 catch(Exception e) {
					 e.printStackTrace();
				 }
				  return status;
			  }
	  
	  public static int AddAdmin(AdminBean ab) {
			 try {
				  con = Connect.getConnection();
				  
	      String sql = "insert into admin_tb values(?,?,?,?,?)";  
				  ps = con.prepareStatement(sql);
				 ps.setString(1, ab.getAdminusername());
				  ps.setString(2, ab.getPassword());
				  ps.setString(3, ab.getEmail());
				  ps.setString(4, ab.getMobile());
				  ps.setString(5, ab.getName());
				  
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
				  
	   String sql = "select * from admin_tb where adminusername!='admin'";  
				  ps = con.prepareStatement(sql);
				  
			     rs = ps.executeQuery();
			     
				 }
				 catch(Exception e) {
					 e.printStackTrace();
				 }
				  return rs;
			  }
	  public static ResultSet ShowRecord(String un) {
			 try {
				  con = Connect.getConnection();
				  
	   String sql = "select * from admin_tb where adminusername=?";  
				  ps = con.prepareStatement(sql);
				  ps.setString(1, un);
			     rs = ps.executeQuery();
			     
				 }
				 catch(Exception e) {
					 e.printStackTrace();
				 }
				  return rs;
			  }
	  
	  public static int UpdateAdmin(AdminBean ab) {
			 try {
			  con = Connect.getConnection();
			  
			  String sql = "update admin_tb set adminusername=?, password=?, name=?, email=?, mobile=? where adminusername=?";
			  
			  ps = con.prepareStatement(sql);
			  ps.setString(1, ab.getAdminusername());
			  ps.setString(2, ab.getPassword());
			  ps.setString(3, ab.getName());
			  ps.setString(4, ab.getEmail());
			  ps.setString(5, ab.getMobile());
			  ps.setString(6, ab.getAdminusername());
			  

			  status = ps.executeUpdate();
			 }
			 catch(Exception e) {
				 e.printStackTrace();
			 }
			  return status;
		  }   

		  public static int DeleteAdmin(String un) {
			 try {
			  con = Connect.getConnection();
			  
			  String sql = "delete from admin_tb where adminusername=?";
			  
			  ps = con.prepareStatement(sql);
			  ps.setString(1, un); 

			  status = ps.executeUpdate();
			 }
			 catch(Exception e) {
				 e.printStackTrace();
			 }
			  return status;
		  }   

		  public static ResultSet selectPass(AdminBean ab) {
				 try {
					  con = Connect.getConnection();
					  
		   String sql = "select password from admin_tb where adminusername=?";  
					  ps = con.prepareStatement(sql);
					  ps.setString(1, ab.getAdminusername());
				     rs = ps.executeQuery();
				     
					 }
					 catch(Exception e) {
						 e.printStackTrace();
					 }
					  return rs;
				  }
		  

		  public static int ChangePass(AdminBean ab, String np) {
				 try {
				  con = Connect.getConnection();
				  
				  String sql = "update admin_tb set password=? where adminusername=? and password=?";
				  
				  ps = con.prepareStatement(sql);
				  ps.setString(1, np);
				  ps.setString(2, ab.getAdminusername());
				  ps.setString(3, ab.getPassword());

				  status = ps.executeUpdate();
				 }
				 catch(Exception e) {
					 e.printStackTrace();
				 }
				  return status;
			  }   


	}
