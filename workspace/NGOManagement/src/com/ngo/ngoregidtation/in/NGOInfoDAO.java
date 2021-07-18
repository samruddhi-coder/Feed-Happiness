package com.ngo.ngoregidtation.in;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class NGOInfoDAO {
	public boolean insert(String name,String add,String city,String cont,String email,String reg_no,String password,int catagory1,int catagory2,int catagory3,int catagory4)
	{
		try
		{
			 Class.forName("com.mysql.jdbc.Driver"); 
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ngo", "root", "");
		String sql = "Insert into volunter_registration(ngo_name,address,contact_no,email,reg_no,password,catagory1,catagory2,catagory3,catagory4) values('"+name+"'"+",'"+add+"','"+cont+"','"+email+"','"+reg_no+"','"+password+"',"+catagory1+","+catagory2+","+catagory3+")";
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
