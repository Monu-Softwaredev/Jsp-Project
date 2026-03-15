package com.net.DAO;

import com.net.bean.UserBean;
import com.net.connect.Connect;
import java.sql.*;

public class UserDAO {
 
  static Connection con=null;
  static int status = 0;
  static PreparedStatement ps = null;
  static Statement st = null;
  static ResultSet rs = null;
  
  public static int Register(UserBean ub) {
	 try {
	  con = Connect.getConnection();
	  
	  String sql = "insert into user_tb (username, password, name, email, dob, city)values(?,?,?,?,?,?)";
	  
	  ps = con.prepareStatement(sql);
	  ps.setString(1, ub.getUsername());
	  ps.setString(2, ub.getPassword());
	  ps.setString(3, ub.getName());
	  ps.setString(4, ub.getEmail());
	  ps.setString(5, ub.getDob());
	  ps.setString(6, ub.getCity());
	  
     status = ps.executeUpdate();
	 }
	 catch(Exception e) {
		 e.printStackTrace();
	 }
	  return status;
  } 
  
  public static int Login(UserBean ub) {
		 try {
			  con = Connect.getConnection();
			  
//			  String sql = "select * from user_tb where username='"+ub.getUsername()+"' and password='"+ub.getPassword()+"'";
//			  
// st = con.createStatement();
//		
// rs = st.executeQuery(sql);
// 
// if(rs.next()) {
// 	status = 1;
// }
// else
// 	status = 0;
			  
			  
   String sql = "select * from user_tb where username=? and password=?";  
			  ps = con.prepareStatement(sql);
			  ps.setString(1, ub.getUsername());
			  ps.setString(2, ub.getPassword());
			  
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

  public static ResultSet Show() {
		 try {
			  con = Connect.getConnection();
			  
   String sql = "select * from user_tb";  
			  ps = con.prepareStatement(sql);
			  
		     rs = ps.executeQuery();
		     
			 }
			 catch(Exception e) {
				 e.printStackTrace();
			 }
			  return rs;
		  }

  public static ResultSet ShowRecord(int uid) {
		 try {
			  con = Connect.getConnection();
			  
String sql = "select * from user_tb where uid=?";  
			  ps = con.prepareStatement(sql);
			  
			  ps.setInt(1, uid);
		     rs = ps.executeQuery();
			 }
			 catch(Exception e) {
				 e.printStackTrace();
			 }
			  return rs;
		  }
  public static ResultSet ShowRecord(String uname) {
		 try {
			  con = Connect.getConnection();
			  
String sql = "select * from user_tb where username=?";  
			  ps = con.prepareStatement(sql);
			  
			  ps.setString(1, uname);
		     rs = ps.executeQuery();
			 }
			 catch(Exception e) {
				 e.printStackTrace();
			 }
			  return rs;
		  }

  public static int UpdateUser(UserBean ub) {
	 try {
	  con = Connect.getConnection();
	  
	  String sql = "update user_tb set username=?, password=?, name=?, email=?, dob=?, city=? where uid=?";
	  
	  ps = con.prepareStatement(sql);
	  ps.setString(1, ub.getUsername());
	  ps.setString(2, ub.getPassword());
	  ps.setString(3, ub.getName());
	  ps.setString(4, ub.getEmail());
	  ps.setString(5, ub.getDob());
	  ps.setString(6, ub.getCity());
	  ps.setInt(7, ub.getUid()); 

	  status = ps.executeUpdate();
	 }
	 catch(Exception e) {
		 e.printStackTrace();
	 }
	  return status;
  }   

  public static int DeleteUser(int uid) {
	 try {
	  con = Connect.getConnection();
	  
	  String sql = "delete from user_tb where uid=?";
	  
	  ps = con.prepareStatement(sql);
	  ps.setInt(1, uid); 

	  status = ps.executeUpdate();
	 }
	 catch(Exception e) {
		 e.printStackTrace();
	 }
	  return status;
  }   
  public static ResultSet selectPass(UserBean ub) {
		 try {
			  con = Connect.getConnection();
			  
String sql = "select password from user_tb where username=?";  
			  ps = con.prepareStatement(sql);
			  ps.setString(1, ub.getUsername());
		     rs = ps.executeQuery();
		     
			 }
			 catch(Exception e) {
				 e.printStackTrace();
			 }
			  return rs;
		  }


public static int ChangePass(UserBean ub, String np) {
		 try {
		  con = Connect.getConnection();
		  
		  String sql = "update user_tb set password=? where username=? and password=?";
		  
		  ps = con.prepareStatement(sql);
		  ps.setString(1, np);
		  ps.setString(2, ub.getUsername());
		  ps.setString(3, ub.getPassword());

		  status = ps.executeUpdate();
		 }
		 catch(Exception e) {
			 e.printStackTrace();
		 }
		  return status;
	  }   

}
