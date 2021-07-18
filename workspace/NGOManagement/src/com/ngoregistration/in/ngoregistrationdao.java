package com.ngoregistration.in;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class ngoregistrationdao {
	public boolean insert(String name,String add,String city,String cont,String email,String reg_no,String password,String catagory1,String catagory2,String catagory3,String catagory4)
	{
		
			try{
				System.out.println(name+" "+add+" "+city+" "+cont+" "+email+" "+reg_no+" "+password+" "+catagory1+" "+catagory2+" "+catagory3+" "+catagory4);
			 Class.forName("com.mysql.jdbc.Driver"); 
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ngo", "root", "");
		String sql = "Insert into volunter_registration(ngo_name,address,city,contact_no,email,reg_no,password,catagory1,catagory2,catagory3,catagory4) values('"+name+"'"+",'"+add+"','"+city+"','"+cont+"','"+email+"','"+reg_no+"','"+password+"',"+catagory1+","+catagory2+","+catagory3+","+catagory4+")";
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
