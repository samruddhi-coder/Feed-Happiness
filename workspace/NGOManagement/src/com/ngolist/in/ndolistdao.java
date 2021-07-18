package com.ngolist.in;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ndolistdao {
	public ArrayList<String> getcity(String city_id,String c1,String c2,String c3,String c4)
	{
		ArrayList<String> city=new ArrayList<String>();
		String sql;
		try{
			 Class.forName("com.mysql.jdbc.Driver"); 
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ngo", "root", "");
			
			 sql = "select * from volunter_registration where city=?";
			
	PreparedStatement pstm = con.prepareStatement(sql);
	pstm.setString(1,city_id);


	ResultSet rs=pstm.executeQuery();
	int i=0;
	while(rs.next())
	{
		city.add(i,rs.getString("ngo_name")+"#"+rs.getString("id"));
		i++;
	}
	pstm.close();
	con.close();
			
		return city;
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	return null;
	}
}
