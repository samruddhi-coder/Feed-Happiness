package com.makedonation.in;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ngoregistration.in.ngoregistrationdao;

/**
 * Servlet implementation class MakeDonationServlet
 */
@WebServlet("/MakeDonationServlet")
public class MakeDonationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MakeDonationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String cust_id=request.getParameter("cust_id");
		String date=request.getParameter("date");
		String des=request.getParameter("description");
		String ngo_id=request.getParameter("ngo_id");
		String catagory1=request.getParameter("cloth");
		String catagory2=request.getParameter("grain_food");
		String catagory3=request.getParameter("cooked_food");
		String catagory4=request.getParameter("other");
//		 out.println("<script type=\"text/javascript\">");
//		 out.println("alert('"+catagory1+" "+catagory2+" "+catagory3+" "+catagory4+"');");
//		 out.println("location='ngo_registration.jsp';");
//		 out.println("</script>");
		
		makedonationdao cd=new makedonationdao();
		boolean s=cd.insert( cust_id,ngo_id,des,date,catagory1,catagory2,catagory3,catagory4);
		if(s==true)
		{
			 RequestDispatcher view = request.getRequestDispatcher("donar_home.jsp");
				view.forward(request, response);
		}
		else
		{
			 out.println("<script type=\"text/javascript\">");
			 out.println("alert('insert unsuccessfully !!!');");
			 out.println("location='make_donation.jsp';");
			 out.println("</script>");
		}
		
	}

}
