package com.login.in;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class logindao {
	public int check(String email,String pass,String type)
	{
		String sql;
			try{
				 Class.forName("com.mysql.jdbc.Driver"); 
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ngo", "root", "");
				if(type.equals("2"))
				{
	 sql= "select * from volunter_registration where email=? and password=?";
				}
				else
				{
				 sql = "select * from customer_registration where email=? and password=?";
				}
		PreparedStatement pstm = con.prepareStatement(sql);
		pstm.setString(1,email);
		pstm.setString(2, pass);
		ResultSet rs=pstm.executeQuery();
		if(rs.next())
		{
			return rs.getInt("id");
		}
		pstm.close();
		con.close();
				
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return 0;
	}

}
