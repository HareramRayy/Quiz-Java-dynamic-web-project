package com.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class Upast {
	
	public void insert(String user_id, String date1, int marks)throws Exception{
		String url="jdbc:mysql://localhost:3306/Test_Web_App1";
		String uname="root";
		String pass="1234";
		String query="insert into Upast values(?,?,?)";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement st=con.prepareStatement(query);
		
		st.setString(1,user_id);
		st.setString(2, date1);
		st.setInt(3, marks);
		int count =st.executeUpdate();
		
		st.close();
		con.close();
	}
	
	public String pastData(String idd)throws Exception{
	//	String idd="a";
		String Answer="";
		String url="jdbc:mysql://localhost:3306/Test_Web_App1";
		String uname="root";
		String pass="1234";
		String query="select * from Upast";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery(query);
	//	rs.next();
		while(rs.next()){
			String temp_id=rs.getString(1);
			if(temp_id.equals(idd)){
			String nam =rs.getString(2)+" "+rs.getInt(3);
			Answer=Answer+"-"+nam;
			}		
		}		
		st.close();
		con.close();
		return Answer;		
	}	
	
	//Clear user past test/marks record
	public void pastDataClear(String idd)throws Exception{
		//	String idd="a";
		idd="'"+idd+"'";
		//String Answer="";
		String url="jdbc:mysql://localhost:3306/Test_Web_App1";
		String uname="root";
		String pass="1234";
		String sql="delete from Upast where username="+idd;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		Statement stmt=con.createStatement();
		stmt.executeUpdate(sql);
		stmt.close();
		con.close();
		}		
	
}


