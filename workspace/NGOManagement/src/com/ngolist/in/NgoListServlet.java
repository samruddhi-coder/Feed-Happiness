package com.ngolist.in;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.citylist.in.citydao;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

/**
 * Servlet implementation class NgoListServlet
 */
@WebServlet("/NgoListServlet")
public class NgoListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NgoListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String city=request.getParameter("city");
		String c1=request.getParameter("cloth");
		String c2=request.getParameter("grain_food");
		String c3=request.getParameter("cooked_food");
		String c4=request.getParameter("other");
		
		ndolistdao c=new ndolistdao();
		ArrayList<String> cc=c.getcity(city,c1,c2,c3,c4);
		JsonArray arrobj=new JsonArray();
		
		JsonObject obj;
		for(int i=0;i<cc.size();i++)
		{
			obj= new JsonObject();
			
			obj.addProperty("id", cc.get(i).split("#")[1]);
			obj.addProperty("ngo_name", cc.get(i).split("#")[0]);
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
