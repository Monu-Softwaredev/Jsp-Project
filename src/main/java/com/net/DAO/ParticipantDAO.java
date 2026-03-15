package com.net.DAO;

import com.net.bean.ParticipantBean;
import com.net.connect.Connect;
import java.sql.*;

public class ParticipantDAO {
 
  static Connection con=null;
  static int status = 0;
  static PreparedStatement ps = null;
  static Statement st = null;
  static ResultSet rs = null;
  
  public static int Register(ParticipantBean pb) {
	 try {
	  con = Connect.getConnection();
	  
	  String sql = "insert into participant_tb (eventid, eventname, name, collegename, branch, email, mobile, city, DOB, gender)values(?,?,?,?,?,?,?,?,?,?)";
	  
	  ps = con.prepareStatement(sql);
	  ps.setInt(1, pb.getEventid());
	  ps.setString(2, pb.getEventname());
	  ps.setString(3, pb.getName());
	  ps.setString(4, pb.getCollegename());
	  ps.setString(5, pb.getBranch());
	  ps.setString(6, pb.getEmail());
	  ps.setString(7, pb.getMobile());
	  ps.setString(8, pb.getCity());
	  ps.setString(9, pb.getDob());
	  ps.setString(10, pb.getGender());
		  
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
			  
   String sql = "select * from participant_tb";  
			  ps = con.prepareStatement(sql);
			  
		     rs = ps.executeQuery();
		     
			 }
			 catch(Exception e) {
				 e.printStackTrace();
			 }
			  return rs;
		  }

  public static ResultSet ShowRecord(int pid) {
		 try {
			  con = Connect.getConnection();
			  
String sql = "select * from participant_tb where pid=?";  
			  ps = con.prepareStatement(sql);
			  
			  ps.setInt(1, pid);
		     rs = ps.executeQuery();
			 }
			 catch(Exception e) {
				 e.printStackTrace();
			 }
			  return rs;
		  }
//  public static ResultSet ShowRecord(String uname) {
//		 try {
//			  con = Connect.getConnection();
//			  
//String sql = "select * from participant_tb where username=?";  
//			  ps = con.prepareStatement(sql);
//			  
//			  ps.setString(1, uname);
//		     rs = ps.executeQuery();
//			 }
//			 catch(Exception e) {
//				 e.printStackTrace();
//			 }
//			  return rs;
//		  }
//
  public static int UpdateParticipant(ParticipantBean pb) {
	 try {
	  con = Connect.getConnection();
	  
	  String sql = "update participant_tb set eventid=?, eventname=?, name=?, collegename=?, branch=?, email=?, mobile=?, city=?, DOB=?, gender=? where pid=?";
	  
	  ps = con.prepareStatement(sql);
	  ps.setInt(1, pb.getEventid());
	  ps.setString(2, pb.getEventname());
	  ps.setString(3, pb.getName());
	  ps.setString(4, pb.getCollegename());
	  ps.setString(5, pb.getBranch());
	  ps.setString(6, pb.getEmail());
	  ps.setString(7, pb.getMobile());
	  ps.setString(8, pb.getCity());
	  ps.setString(9, pb.getDob());
	  ps.setString(10, pb.getGender());
	  ps.setInt(11, pb.getPid());

	  status = ps.executeUpdate();
	 }
	 catch(Exception e) {
		 e.printStackTrace();
	 }
	  return status;
  }   

  public static int DeleteParticipant(int pid) {
	 try {
	  con = Connect.getConnection();
	  
	  String sql = "delete from participant_tb where pid=?";
	  
	  ps = con.prepareStatement(sql);
	  ps.setInt(1, pid); 

	  status = ps.executeUpdate();
	 }
	 catch(Exception e) {
		 e.printStackTrace();
	 }
	  return status;
  }   
//  public static ResultSet selectPass(UserBean ub) {
//		 try {
//			  con = Connect.getConnection();
//			  
//String sql = "select password from user_tb where username=?";  
//			  ps = con.prepareStatement(sql);
//			  ps.setString(1, ub.getUsername());
//		     rs = ps.executeQuery();
//		     
//			 }
//			 catch(Exception e) {
//				 e.printStackTrace();
//			 }
//			  return rs;
//		  }
//
//
//public static int ChangePass(UserBean ub, String np) {
//		 try {
//		  con = Connect.getConnection();
//		  
//		  String sql = "update user_tb set password=? where username=? and password=?";
//		  
//		  ps = con.prepareStatement(sql);
//		  ps.setString(1, np);
//		  ps.setString(2, ub.getUsername());
//		  ps.setString(3, ub.getPassword());
//
//		  status = ps.executeUpdate();
//		 }
//		 catch(Exception e) {
//			 e.printStackTrace();
//		 }
//		  return status;
//	  }   

}
