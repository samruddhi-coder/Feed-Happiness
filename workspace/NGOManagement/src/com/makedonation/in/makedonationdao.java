package com.makedonation.in;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Date;

public class makedonationdao {
	public boolean insert(String cust_id,String ngo_id,String des,String date,String catagory1,String catagory2,String catagory3,String catagory4)
	{
		Date d=new Date();
			try{
				System.out.println(cust_id+" "+ ngo_id+" "+des+" "+ date+" "+catagory1+" "+catagory2+" "+catagory3+" "+catagory4);
			 Class.forName("com.mysql.jdbc.Driver"); 
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ngo", "root", "");
		String sql = "Insert into donation(cust_id,volunter_id,description,catagory1,catagory2,catagory3,catagory4,food_exp,creation_date) values("+cust_id+""+","+ngo_id+",'"+des+"',"+catagory1+","+catagory2+","+catagory3+","+catagory4+",'"+date+"','"+d.toString()+"')";
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
