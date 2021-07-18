package com.citylist.in;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;









import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

/**
 * Servlet implementation class CityListServlet
 */
@WebServlet("/CityListServlet")
public class CityListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CityListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String state=request.getParameter("state");
		citydao c=new citydao();
		ArrayList<String> cc=c.getcity(state);
		JsonArray arrobj=new JsonArray();
		
		JsonObject obj;
		for(int i=0;i<cc.size();i++)
		{
			obj= new JsonObject();
			obj.addProperty("id", cc.get(i).split("#")[1]);
			obj.addProperty("city_name", cc.get(i).split("#")[0]);
			arrobj.add(obj);
		}
	
//		obj= new JsonObject();
//		obj.addProperty("id", "sd");
//		arrobj.add(obj);
//		obj= new JsonObject();
//		obj.addProperty("id", "fdgcfgh");
//		arrobj.add(obj);
		
		PrintWriter pw=response.getWriter();
		pw.println(arrobj);
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
