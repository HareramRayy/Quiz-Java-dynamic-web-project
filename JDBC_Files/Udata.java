package com.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Udata {
	int id;
	String answer;
	public Udata(){
		
	}
	public Udata(int temp){
		id=temp;
	}
	public Udata(int temp1, String temp2){
		id=temp1;
		answer=temp2;
	}
	
	public String check()throws Exception{
		int x=0;
	//	id=1;
		String url="jdbc:mysql://localhost:3306/Test_Web_App1";
		String uname="root";
		String pass="1234";
		String query="select key_data from internal_data where id="+id;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery(query);
		rs.next();
		String nam =rs.getString(1);
		st.close();
		con.close();
		return nam;
	}
	
	public boolean validate()throws Exception{
		//This method used to validate test answers.
		String url="jdbc:mysql://localhost:3306/Test_Web_App1";
		String uname="root";
		String pass="1234";
		String query="select value_data from internal_data where id="+id;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery(query);
		rs.next();
		String nam =rs.getString(1);
		if(nam.toUpperCase().equals(answer.toUpperCase())){
			return true;
		}
		
			return false;
		
	}
	
}
