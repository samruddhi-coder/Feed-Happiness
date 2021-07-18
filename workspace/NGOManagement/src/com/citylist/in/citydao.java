package com.citylist.in;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class citydao {
	public ArrayList<String> getcity(String state_id)
	{
		ArrayList<String> city=new ArrayList<String>();
		String sql;
		try{
			 Class.forName("com.mysql.jdbc.Driver"); 
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ngo", "root", "");
			
			 sql = "select * from cities where state_id=?";
			
	PreparedStatement pstm = con.prepareStatement(sql);
	pstm.setString(1,state_id);

	ResultSet rs=pstm.executeQuery();
	int i=0;
	while(rs.next())
	{
		city.add(i,rs.getString("city_name")+"#"+rs.getString("id"));
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
