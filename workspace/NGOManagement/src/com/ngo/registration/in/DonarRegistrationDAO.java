package com.ngo.registration.in;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DonarRegistrationDAO {
	public boolean insert(String name,String add,String city,String cont,String email,String pass)
	{
		try
		{
			 Class.forName("com.mysql.jdbc.Driver"); 
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ngo", "root", "");
		String sql = "Insert into customer_registration(name,password,address,city,contact_no,email) values('"+name+"'"+",'"+pass+"','"+add+"','"+city+"','"+cont+"','"+email+"')";
		PreparedStatement pstm = con.prepareStatement(sql);
		pstm.executeUpdate();
		pstm.close();
		con.close();
		return true;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
}
