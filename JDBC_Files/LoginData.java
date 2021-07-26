package com.test.user;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
public class LoginData {
	public String mobile="1",DOB,username,password;
	public LoginData(){
		
	}
	public LoginData(String mobile,String DOB,String username,String password){
		mobile=mobile;
		password=password;
		DOB=DOB;
		username=username;
	}
	public LoginData(String mobile,String password){
		mobile=mobile;
		password=password;
	}
	
	//Method for Sign Up
	public boolean signUp(String mob,String d,String na,String p)throws Exception{
		int f=0;
		boolean Answer=false;
		String url="jdbc:mysql://localhost:3306/Test_Web_App1";
		String uname="root";
		String pass="1234";
		String query="select * from login_data;";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery(query);
	//rs.next();
		while(rs.next()){
			String  temp=rs.getString(1);
			if(temp.equals(mob)){
				f=1;
				break;
		   }
		}
		if(f==0){
			query="insert into login_data values(?,?,?,?)";
			PreparedStatement st1=con.prepareStatement(query);
			st1.setString(1,mob);
			st1.setString(2,d);
			st1.setString(3,na);
			st1.setString(4,p);
			int count =st1.executeUpdate();
			//System.out.println("data inserted"+count);
			Answer=true;
		}
		st.close();
		con.close();
		return Answer;
	}
	
	
	//Method for Log in
	public boolean logIn(String mob,String p)throws Exception{
		int f=0;
		boolean Answer=false;
		String url="jdbc:mysql://localhost:3306/Test_Web_App1";
		String uname="root";
		String pass="1234";
		String query="select * from login_data;";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery(query);
	//rs.next();
		while(rs.next()){
			String  temp=rs.getString(1);
			if(temp.equals(mob)){
				f=1;
				String temp1=rs.getString(4);
				if(temp1.equals(p)){
					Answer=true;
				}
				break;
		   }
		}
	return Answer;
}
}
